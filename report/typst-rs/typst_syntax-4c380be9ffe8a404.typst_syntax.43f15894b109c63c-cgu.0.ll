Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer9backslash:bb.a
    i32 22, label %bb.n
    i32 32, label %bb.q
    i32 48, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.do = icmp eq i32 %.sroa.4.0.i.i.i37, 5760
  %i.dp = zext i1 %i.do to i8
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

bb.o:                                             ; preds = %bb.m
  %i.dq = icmp eq i32 %.sroa.4.0.i.i.i37, 12288
  %i.dr = zext i1 %i.dq to i8
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

bb.p:                                             ; preds = %bb.m
  %i.ds = and i32 %.sroa.4.0.i.i.i37, 255
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !4162, !noundef !4
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

bb.q:                                             ; preds = %bb.m
  %i.dw = and i32 %.sroa.4.0.i.i.i37, 255
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !4162, !noundef !4
  %i.ea = lshr i8 %i.dz, 1
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36
  %i.eb = icmp samesign ult i32 %.sroa.4.0.i.i.i37, 1114112
  tail call void @llvm.assume(i1 %i.eb)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.dr, %bb.o ], [ %i.dv, %bb.p ], [ %i.dp, %bb.n ], [ %i.ea, %bb.q ]
  %i.ec = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.ec, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit
  br i1 %i.cg, label %.thread51, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ee = and i8 %i.cf, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw nsw i64 %i.k, 1
  %i.eh = icmp samesign ne i64 %i.eg, %i.i
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i8, ptr %i.ed, align 1, !noalias !4163, !noundef !4
  %i.ej = shl nuw nsw i32 %i.ef, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.cf, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ep = add nuw nsw i64 %i.k, 2
  %i.eq = icmp samesign ne i64 %i.ep, %i.i
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load i8, ptr %i.eo, align 1, !noalias !4163, !noundef !4
  %i.es = shl nuw nsw i32 %i.el, 6
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ef, 12
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i8 %i.cf, -17
  br i1 %i.ey, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.fa = add nuw nsw i64 %i.k, 3
  %i.fb = icmp samesign ne i64 %i.fa, %i.i
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !4163, !noundef !4
  %i.fd = shl nuw nsw i32 %i.ef, 18
  %i.fe = and i32 %i.fd, 1835008
  %i.ff = shl nuw nsw i32 %i.ev, 6
  %i.fg = and i8 %i.fc, 63
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ff, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.fe
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.ex, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.fj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.em, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 4 uses
  %i.fk = icmp samesign ult i32 %spec.select.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp samesign ult i32 %spec.select.i.ph, 128
  br i1 %i.fl, label %.thread51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = icmp samesign ult i32 %spec.select.i.ph, 2048
  br i1 %i.fm, label %.thread51, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fn = icmp samesign ult i32 %spec.select.i.ph, 65536
  %. = select i1 %i.fn, i64 3, i64 4
  br label %.thread51

.thread51:                                        ; preds = %.thread, %bb.s, %bb.t, %bb.r
  %.sroa.028.0 = phi i64 [ 2, %bb.s ], [ %., %bb.t ], [ 1, %bb.r ], [ 1, %.thread ]
  %i.fo = add i64 %.sroa.028.0, %i.k
  store i64 %i.fo, ptr %i.j, align 8
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit: ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46, %.thread51, %bb.b, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit, %bb.ad
  %.sroa.0.0 = phi i8 [ %.sroa.0.1, %bb.ad ], [ 8, %bb.b ], [ 8, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit ], [ 10, %.thread51 ], [ 8, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46 ]
  ret i8 %.sroa.0.0

bb.u:                                             ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4171
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8, !noalias !4171
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.fp, align 8, !noalias !4171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4184)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef range(i64 0, -9223372036854775808) 32)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i unwind label %bb.v, !noalias !4171

bb.v:                                             ; preds = %bb.u
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !4171, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i.i.i) #59
          to label %common.resume unwind label %bb.w, !noalias !4171

bb.w:                                             ; preds = %bb.v
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4171
  unreachable

common.resume.sink.split:                         ; preds = %bb.ai, %bb.x
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fu, %bb.x ], [ %i.hm, %bb.ai ]
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.af, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.fq, %bb.v ], [ %i.hl, %bb.af ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.u
  %i.fs = load ptr, ptr %i.b, align 8, !alias.scope !4184, !noalias !4187, !nonnull !4, !noundef !4 ; 3 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.fp, align 8, !alias.scope !4184, !noalias !4187 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr nuw i8, ptr %i.fs, i64 %.promoted.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %scevgep.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) @322, i64 range(i64 0, -9223372036854775808) 32, i1 false), !noalias !4189
  %i.ft = add i64 %.promoted.i.i.i.i.i.i, 32      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4171
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB12_3vec6EcoVecBY_EEEECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorReEB7_.exit unwind label %bb.x, !noalias !4190

bb.x:                                             ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fs, ptr %0, align 8, !alias.scope !4168, !noalias !4190
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ft, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4168, !noalias !4190
  br label %common.resume.sink.split

_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorReEB7_.exit: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  store ptr %i.fs, ptr %0, align 8, !alias.scope !4168, !noalias !4190
  %.sroa.01.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ft, ptr %.sroa.01.sroa.5.0..sroa_idx14.i, align 8, !alias.scope !4168, !noalias !4190
  %.sroa.52.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.52.0..sroa_idx3.i, align 8, !alias.scope !4168, !noalias !4190
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !4168, !noalias !4190
  br label %bb.ad

bb.y:                                             ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i
  %i.fv = add i64 %i.bo, 1
  store i64 %i.fv, ptr %i.j, align 8, !alias.scope !4150
  switch i64 %i.by, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.fw = load i8, ptr %i.bz, align 1, !alias.scope !4191, !noundef !4 ; 2 uses
  switch i8 %i.fw, label %bb.aa [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.y
  %.pr.i = load i8, ptr %i.bz, align 1, !alias.scope !4191
  br label %bb.aa

bb.aa:                                            ; preds = %thread-pre-split.i, %bb.z
  %i.fx = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.fw, %bb.z ]
  %cond.i = icmp eq i8 %i.fx, 43                  ; 2 uses
  %i.fy = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.by, %i.fy        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.fz = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.fz, label %.preheader.i, label %.preheader64.split.i.preheader

.preheader.i:                                     ; preds = %bb.aa
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.i.a

.preheader64.split.i:                             ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i94, i64 1
  %i.gb = add nsw i64 %.sroa.15.1.i93, -1         ; 2 uses
  %.not55.i = icmp eq i64 %i.gb, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader64.split.i.preheader

.loopexit.i:                                      ; preds = %.preheader64.split.i, %bb.ac, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %4, %bb.ac ], [ 0, %.preheader.i ], [ %i.go, %.preheader64.split.i ]
  %i.gc = zext i32 %.sroa.045.1.i to i64
  %i.gd = shl nuw i64 %i.gc, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader64.split.i.preheader:                   ; preds = %bb.aa, %.preheader64.split.i
  %.sroa.0.1.i94 = phi ptr [ %i.ga, %.preheader64.split.i ], [ %.sroa.0.0.i, %bb.aa ] ; 3 uses
  %.sroa.15.1.i93 = phi i64 [ %i.gb, %.preheader64.split.i ], [ %.sroa.15.0.i, %bb.aa ]
  %.sroa.045.0.i92 = phi i32 [ %i.go, %.preheader64.split.i ], [ 0, %bb.aa ] ; 2 uses
  %i.ge = icmp ugt i32 %.sroa.045.0.i92, 268435455
  br i1 %i.ge, label %.split.us.i, label %bb.ab, !prof !65

bb.ab:                                            ; preds = %.preheader64.split.i.preheader
  %i.gf = shl nuw i32 %.sroa.045.0.i92, 4         ; 2 uses
  %i.gg = load i8, ptr %.sroa.0.1.i94, align 1, !alias.scope !4191, !noundef !4 ; 2 uses
  %i.gh = zext i8 %i.gg to i32                    ; 2 uses
  %i.gi = icmp ugt i8 %i.gg, 57
  %i.gj = add nsw i32 %i.gh, -65
  %i.gk = and i32 %i.gj, -33
  %i.gl = add nuw nsw i32 %i.gk, 10
  %i.gm = add nsw i32 %i.gh, -48
  %spec.select81.i = select i1 %i.gi, i32 %i.gl, i32 %i.gm ; 2 uses
  %i.gn = icmp ugt i32 %spec.select81.i, 15
  %i.go = add i32 %spec.select81.i, %i.gf         ; 3 uses
  %i.gp = icmp ult i32 %i.go, %i.gf
  %or.cond = select i1 %i.gn, i1 true, i1 %i.gp, !prof !826
  br i1 %or.cond, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader64.split.i, !prof !826

.split.us.i:                                      ; preds = %.preheader64.split.i.preheader
  %i.gq = load i8, ptr %.sroa.0.1.i94, align 1, !alias.scope !4191, !noundef !4 ; 2 uses
  %i.gr = zext i8 %i.gq to i32                    ; 2 uses
  %i.gs = icmp ugt i8 %i.gq, 57
  %i.gt = add nsw i32 %i.gr, -65
  %i.gu = and i32 %i.gt, -34
  %i.gv = add nuw nsw i32 %i.gu, 10
  %i.gw = add nsw i32 %i.gr, -48
  %.sroa.02.0.i58.i = select i1 %i.gs, i32 %i.gv, i32 %i.gw
  %i.gx = icmp ult i32 %.sroa.02.0.i58.i, 16
  %spec.select.i40 = select i1 %i.gx, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.split.i.a:                                 ; preds = %.preheader.i, %bb.ac
  %.sroa.0.277.i = phi ptr [ %3, %bb.ac ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.276.i = phi i64 [ %2, %bb.ac ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.275.i = phi i32 [ %4, %bb.ac ], [ 0, %.preheader.i ]
  %i.gy = load i8, ptr %.sroa.0.277.i, align 1, !alias.scope !4191, !noundef !4 ; 2 uses
  %i.gz = zext i8 %i.gy to i32                    ; 2 uses
  %i.ha = icmp ugt i8 %i.gy, 57
  %i.hb = add nsw i32 %i.gz, -65
  %i.hc = and i32 %i.hb, -33
  %i.hd = add nuw nsw i32 %i.hc, 10
  %i.he = add nsw i32 %i.gz, -48
  %spec.select82.i.a = select i1 %i.ha, i32 %i.hd, i32 %i.he ; 2 uses
  %i.hf = icmp ult i32 %spec.select82.i.a, 16
  br i1 %i.hf, label %bb.ac, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ac:                                            ; preds = %.lr.ph.split.i.a
  %1 = shl i32 %.sroa.045.275.i, 4
  %2 = add nsw i64 %.sroa.15.276.i, -1            ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.277.i, i64 1
  %4 = or disjoint i32 %spec.select82.i.a, %1     ; 2 uses
  %.not56.i = icmp eq i64 %2, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.split.i.a

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i40, %.split.us.i ], [ %i.gd, %.loopexit.i ] ; 2 uses
  %i.hg = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.hg, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB7_.exit, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorReEB7_.exit
  %.sroa.0.1 = phi i8 [ 1, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB7_.exit ], [ 1, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorReEB7_.exit ], [ 10, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.ae:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.531.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.531.0.extract.trunc = trunc nuw i64 %.sroa.531.0.extract.shift to i32
  %i.hh = xor i32 %.sroa.531.0.extract.trunc, 55296
  %i.hi = add i32 %i.hh, -1114112
  %i.hj = icmp ult i32 %i.hi, -1112064
  br i1 %i.hj, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.ad

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.ab, %.lr.ph.split.i.a, %bb.y, %bb.z, %bb.z, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.412.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.416.0..sroa_idx, align 8
  %i.hk = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @323, ptr noundef nonnull %i.c)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %common.resume unwind label %bb.aj

bb.ag:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  br i1 %i.hk, label %bb.ah, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !65

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #62
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.ah
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !4194)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB12_3vec6EcoVecBY_EEEECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB7_.exit unwind label %bb.ai, !noalias !4194

bb.ai:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !4197
  br label %common.resume.sink.split

_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB7_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !4197
  %.sroa.52.0..sroa_idx3.i44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.52.0..sroa_idx3.i44, align 8, !alias.scope !4199, !noalias !4194
  %.sroa.6.0..sroa_idx5.i45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx5.i45, align 8, !alias.scope !4199, !noalias !4194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.aj:                                            ; preds = %bb.af
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser15convert_and_eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef range(i8 6, 55) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.0.0.i = load i8, ptr %.sroa.0.0.in.i, align 1, !range !51, !alias.scope !4200, !noalias !4203, !noundef !4
  %i.a = icmp eq i8 %.sroa.0.0.i, 1
  br i1 %i.a, label %bb.b, label %.preheader.i.preheader, !prof !65

.preheader.i.preheader:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader.i

default.unreachable:                              ; preds = %.preheader.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @277, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #62, !noalias !4200
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.f, %bb.d ], [ %i.b, %.preheader.i.preheader ] ; 4 uses
  %i.c = load i8, ptr %.sroa.02.0.i, align 8, !range !592, !noalias !4203, !noundef !4
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit
    i8 1, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit
    i8 2, label %bb.c
    i8 3, label %bb.d
  ], !prof !1831

bb.c:                                             ; preds = %.preheader.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #62, !noalias !4200
  unreachable

bb.d:                                             ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 1
  store i8 %1, ptr %i.e, align 1, !noalias !4203
  %i.f = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #63, !noalias !4203
  br label %.preheader.i

_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit: ; preds = %.preheader.i, %.preheader.i
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 1
  store i8 %1, ptr %.sroa.01.0.i, align 1, !noalias !4203
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i8 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 -128, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4205)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4205, !noalias !4208, !noundef !4 ; 3 uses
  %i.h = load i64, ptr %i.c, align 8, !range !833, !alias.scope !4205, !noalias !4208, !noundef !4
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit unwind label %bb.c, !noalias !4208

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #59
          to label %common.resume unwind label %bb.d, !noalias !4205

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4210
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4205, !noalias !4208, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !4205
  %i.o = add i64 %i.g, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4205, !noalias !4208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i64, ptr %i.q, align 8, !range !97, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.p, i64 noundef %i.r, i64 %i.t)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3lex(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) initializes((57, 58)) %2, i64 noundef range(i64 0, 5) %3, i64 %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.val14 = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  call fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %2)
  %i.e = load i8, ptr %i.b, align 8, !range !51, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.022.0 = phi i8 [ %i.e, %bb.a ], [ %i.al, %bb.n ] ; 8 uses
  %.sroa.0.025 = phi i64 [ %.val14, %bb.a ], [ %.val, %bb.n ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_6Escape3get:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = and i8 %i.z, 31
  %i.ad = zext nneg i8 %i.ac to i32               ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.12.0, 1
  %i.af = icmp samesign ne i64 %i.ae, %.sroa.3.0.i
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i8, ptr %i.ab, align 1, !noalias !5279, !noundef !4
  %i.ah = shl nuw nsw i32 %i.ad, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.z, -33
  br i1 %i.al, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.t

.thread:                                          ; preds = %bb.g
  %i.am = zext nneg i8 %i.z to i32
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ao = or disjoint i64 %.sroa.12.0, 2
  %i.ap = icmp samesign ne i64 %i.ao, %.sroa.3.0.i
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load i8, ptr %i.an, align 1, !noalias !5279, !noundef !4
  %i.ar = shl nuw nsw i32 %i.aj, 6
  %i.as = and i8 %i.aq, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at            ; 2 uses
  %i.av = shl nuw nsw i32 %i.ad, 12
  %i.aw = or disjoint i32 %i.au, %i.av
  %i.ax = icmp samesign ugt i8 %i.z, -17
  br i1 %i.ax, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.t

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.az = add nuw nsw i64 %.sroa.12.0, 3
  %i.ba = icmp samesign ne i64 %i.az, %.sroa.3.0.i
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !5279, !noundef !4
  %i.bc = shl nuw nsw i32 %i.ad, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.au, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  br label %bb.t

bb.h:                                             ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i
  %i.bj = or disjoint i64 %.sroa.12.0, 2          ; 6 uses
  %i.bk = icmp eq i64 %.sroa.3.0.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.o
  %i.bl = phi i64 [ %i.dr, %bb.o ], [ %i.bj, %bb.h ] ; 4 uses
  %i.bm = sub nuw i64 %.sroa.3.0.i, %i.bl         ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.bl ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !5284, !noalias !5287, !noundef !4 ; 5 uses
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.br = and i8 %i.bo, 31
  %i.bs = zext nneg i8 %i.br to i32               ; 3 uses
  %i.bt = icmp samesign ne i64 %i.bm, 1
  call void @llvm.assume(i1 %i.bt)
  %i.bu = load i8, ptr %i.bq, align 1, !alias.scope !5284, !noalias !5287, !noundef !4
  %i.bv = shl nuw nsw i32 %i.bs, 6
  %i.bw = and i8 %i.bu, 63
  %i.bx = zext nneg i8 %i.bw to i32               ; 2 uses
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = icmp samesign ugt i8 %i.bo, -33
  br i1 %i.bz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ca = zext nneg i8 %i.bo to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.cc = icmp samesign ne i64 %i.bm, 2
  call void @llvm.assume(i1 %i.cc)
  %i.cd = load i8, ptr %i.cb, align 1, !alias.scope !5284, !noalias !5287, !noundef !4
  %i.ce = shl nuw nsw i32 %i.bx, 6
  %i.cf = and i8 %i.cd, 63
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg            ; 2 uses
  %i.ci = shl nuw nsw i32 %i.bs, 12
  %i.cj = or disjoint i32 %i.ch, %i.ci
  %i.ck = icmp samesign ugt i8 %i.bo, -17
  br i1 %i.ck, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.cm = icmp samesign ne i64 %i.bm, 3
  call void @llvm.assume(i1 %i.cm)
  %i.cn = load i8, ptr %i.cl, align 1, !alias.scope !5284, !noalias !5287, !noundef !4
  %i.co = shl nuw nsw i32 %i.bs, 18
  %i.cp = and i32 %i.co, 1835008
  %i.cq = shl nuw nsw i32 %i.ch, 6
  %i.cr = and i8 %i.cn, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = or disjoint i32 %i.ct, %i.cp
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, %bb.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %.sroa.4.0.i.i.i = phi i32 [ %i.ca, %bb.i ], [ %i.by, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.cu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ], [ %i.cj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ] ; 9 uses
  %i.cv = add nsw i32 %.sroa.4.0.i.i.i, -48
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i32 %i.cv, 10
  %i.cw = icmp samesign ugt i32 %.sroa.4.0.i.i.i, 64
  %i.cx = icmp samesign ult i32 %.sroa.4.0.i.i.i, 71
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.cw, i1 %i.cx, i1 %.sroa.0.0.i.i.i.i.i.i
  %i.cy = icmp samesign ugt i32 %.sroa.4.0.i.i.i, 96
  %i.cz = icmp samesign ult i32 %.sroa.4.0.i.i.i, 103
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.cy, i1 %i.cz, i1 %.sroa.01.0.i.i.i.i.i.i
  br i1 %.sroa.02.0.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i, label %.lr.ph.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.da = icmp samesign ult i32 %.sroa.4.0.i.i.i, 1114112
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ult i32 %.sroa.4.0.i.i.i, 128
  br i1 %i.db, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.dc = icmp samesign ult i32 %.sroa.4.0.i.i.i, 2048
  br i1 %i.dc, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = icmp samesign ult i32 %.sroa.4.0.i.i.i, 65536
  %..i.i = select i1 %i.dd, i64 3, i64 4
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.o, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.lcssa.i = phi i64 [ %.sroa.3.0.i, %bb.h ], [ %.sroa.3.0.i, %bb.o ], [ %i.bl, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i ] ; 2 uses
  %.not.i.i = icmp ult i64 %i.bj, %.sroa.3.0.i
  br i1 %.not.i.i, label %bb.l, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.bj
  %i.df = load i8, ptr %i.de, align 1, !noalias !5292, !noundef !4
  %i.dg = icmp sgt i8 %i.df, -65
  br i1 %i.dg, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.l
  %i.dh = add nuw nsw i64 %.sroa.12.0, 1          ; 4 uses
  %.not.i.i.1 = icmp ult i64 %i.dh, %.sroa.3.0.i
  br i1 %.not.i.i.1, label %bb.m, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i

bb.m:                                             ; preds = %.lr.ph.i.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !5292, !noundef !4
  %i.dk = icmp sgt i8 %i.dj, -65                  ; 2 uses
  %brmerge = or i1 %i.dk, %i.r
  %.mux = select i1 %i.dk, i64 %i.dh, i64 0
  br i1 %brmerge, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.m
  %.not.i.i.2 = icmp ult i64 %.sroa.12.0, %.sroa.3.0.i
  br i1 %.not.i.i.2, label %bb.n, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i

bb.n:                                             ; preds = %.lr.ph.i.i.2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.12.0
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !5292, !noundef !4
  %i.dn = icmp sgt i8 %i.dm, -65
  %spec.select111 = select i1 %i.dn, i64 %.sroa.12.0, i64 0
  br label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %bb.l, %.lr.ph.i.i
  %.sroa.0.0.lcssa.i.ph.i = phi i64 [ %i.bj, %bb.l ], [ %.sroa.12.0, %.lr.ph.i.i.2 ], [ %i.bj, %.lr.ph.i.i ], [ %i.dh, %.lr.ph.i.i.1 ], [ %.mux, %bb.m ], [ %spec.select111, %bb.n ]
  %i.do = call i64 @llvm.umin.i64(i64 %.lcssa.i, i64 %.sroa.0.0.lcssa.i.ph.i) ; 2 uses
  %i.dp = sub nuw i64 %.lcssa.i, %i.do            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.do ; 3 uses
  switch i64 %i.dp, label %thread-pre-split.i [
    i64 0, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit
    i64 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.k, %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.sroa.3.0.i.ph.i = phi i64 [ %..i.i, %bb.k ], [ 2, %bb.j ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i ]
  %i.dr = add i64 %.sroa.3.0.i.ph.i, %i.bl        ; 2 uses
  %i.ds = icmp eq i64 %.sroa.3.0.i, %i.dr
  br i1 %i.ds, label %.lr.ph.i.i, label %.lr.ph.i

bb.p:                                             ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i
  %i.dt = load i8, ptr %i.dq, align 1, !alias.scope !5293, !noundef !4 ; 2 uses
  switch i8 %i.dt, label %bb.q [
    i8 43, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit
    i8 45, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit
  ]

thread-pre-split.i:                               ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i
  %.pr.i = load i8, ptr %i.dq, align 1, !alias.scope !5293
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i, %bb.p
  %i.du = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.dt, %bb.p ]
  %cond.i = icmp eq i8 %i.du, 43                  ; 2 uses
  %i.dv = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.dp, %i.dv        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i22 = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.dw = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.dw, label %.preheader.i, label %.preheader64.split.i.preheader

.preheader.i:                                     ; preds = %bb.q
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.i.a

.preheader64.split.i:                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i94, i64 1
  %i.dy = add nsw i64 %.sroa.15.1.i93, -1         ; 2 uses
  %.not55.i = icmp eq i64 %i.dy, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader64.split.i.preheader

.loopexit.i:                                      ; preds = %.preheader64.split.i, %bb.s, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %4, %bb.s ], [ 0, %.preheader.i ], [ %i.el, %.preheader64.split.i ]
  %i.dz = zext i32 %.sroa.045.1.i to i64
  %i.ea = shl nuw i64 %i.dz, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader64.split.i.preheader:                   ; preds = %bb.q, %.preheader64.split.i
  %.sroa.0.1.i94 = phi ptr [ %i.dx, %.preheader64.split.i ], [ %.sroa.0.0.i22, %bb.q ] ; 3 uses
  %.sroa.15.1.i93 = phi i64 [ %i.dy, %.preheader64.split.i ], [ %.sroa.15.0.i, %bb.q ]
  %.sroa.045.0.i92 = phi i32 [ %i.el, %.preheader64.split.i ], [ 0, %bb.q ] ; 2 uses
  %i.eb = icmp ugt i32 %.sroa.045.0.i92, 268435455
  br i1 %i.eb, label %.split.us.i, label %bb.r, !prof !65

bb.r:                                             ; preds = %.preheader64.split.i.preheader
  %i.ec = shl nuw i32 %.sroa.045.0.i92, 4         ; 2 uses
  %i.ed = load i8, ptr %.sroa.0.1.i94, align 1, !alias.scope !5293, !noundef !4 ; 2 uses
  %i.ee = zext i8 %i.ed to i32                    ; 2 uses
  %i.ef = icmp ugt i8 %i.ed, 57
  %i.eg = add nsw i32 %i.ee, -65
  %i.eh = and i32 %i.eg, -33
  %i.ei = add nuw nsw i32 %i.eh, 10
  %i.ej = add nsw i32 %i.ee, -48
  %spec.select81.i = select i1 %i.ef, i32 %i.ei, i32 %i.ej ; 2 uses
  %i.ek = icmp ugt i32 %spec.select81.i, 15
  %i.el = add i32 %spec.select81.i, %i.ec         ; 3 uses
  %i.em = icmp ult i32 %i.el, %i.ec
  %or.cond = select i1 %i.ek, i1 true, i1 %i.em, !prof !826
  br i1 %or.cond, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.preheader64.split.i, !prof !826

.split.us.i:                                      ; preds = %.preheader64.split.i.preheader
  %i.en = load i8, ptr %.sroa.0.1.i94, align 1, !alias.scope !5293, !noundef !4 ; 2 uses
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = icmp ugt i8 %i.en, 57
  %i.eq = add nsw i32 %i.eo, -65
  %i.er = and i32 %i.eq, -34
  %i.es = add nuw nsw i32 %i.er, 10
  %i.et = add nsw i32 %i.eo, -48
  %.sroa.02.0.i58.i = select i1 %i.ep, i32 %i.es, i32 %i.et
  %i.eu = icmp ult i32 %.sroa.02.0.i58.i, 16
  %spec.select.i23 = select i1 %i.eu, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.split.i.a:                                 ; preds = %.preheader.i, %bb.s
  %.sroa.0.277.i = phi ptr [ %3, %bb.s ], [ %.sroa.0.0.i22, %.preheader.i ] ; 2 uses
  %.sroa.15.276.i = phi i64 [ %2, %bb.s ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.275.i = phi i32 [ %4, %bb.s ], [ 0, %.preheader.i ]
  %i.ev = load i8, ptr %.sroa.0.277.i, align 1, !alias.scope !5293, !noundef !4 ; 2 uses
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = icmp ugt i8 %i.ev, 57
  %i.ey = add nsw i32 %i.ew, -65
  %i.ez = and i32 %i.ey, -33
  %i.fa = add nuw nsw i32 %i.ez, 10
  %i.fb = add nsw i32 %i.ew, -48
  %spec.select82.i.a = select i1 %i.ex, i32 %i.fa, i32 %i.fb ; 2 uses
  %i.fc = icmp ult i32 %spec.select82.i.a, 16
  br i1 %i.fc, label %bb.s, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.s:                                             ; preds = %.lr.ph.split.i.a
  %1 = shl i32 %.sroa.045.275.i, 4
  %2 = add nsw i64 %.sroa.15.276.i, -1            ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.277.i, i64 1
  %4 = or disjoint i32 %spec.select82.i.a, %1     ; 2 uses
  %.not56.i = icmp eq i64 %2, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.split.i.a

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i23, %.split.us.i ], [ %i.ea, %.loopexit.i ] ; 2 uses
  %i.fd = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.fd, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.u

bb.t:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.aw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.bi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.ak, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 2 uses
  %i.fe = icmp samesign ult i32 %spec.select.i.ph, 1114112
  call void @llvm.assume(i1 %i.fe)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit: ; preds = %bb.r, %.lr.ph.split.i.a, %bb.t, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i, %bb.p, %bb.p, %.thread, %bb.f, %bb.u, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.0.1 = phi i32 [ 0, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit ], [ %i.am, %.thread ], [ %spec.select, %bb.u ], [ 0, %bb.f ], [ 0, %.lr.ph.split.i.a ], [ 0, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i ], [ %spec.select.i.ph, %bb.t ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.r ]
  ret i32 %.sroa.0.1

bb.u:                                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.519.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.519.0.extract.trunc = trunc nuw i64 %.sroa.519.0.extract.shift to i32 ; 2 uses
  %i.ff = xor i32 %.sroa.519.0.extract.trunc, 55296
  %i.fg = add i32 %i.ff, -1114112
  %i.fh = icmp ult i32 %i.fg, -1112064
  %spec.select = select i1 %i.fh, i32 0, i32 %.sroa.519.0.extract.trunc
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #27 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.d [
    i64 0, label %.loopexit
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  %i.a = icmp eq i8 %lhsc, 46
  br i1 %i.a, label %.loopexit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = icmp ne i16 %i.b, 11822
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %bb.d
  %i.g = phi i64 [ %i.aw, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.h = phi ptr [ %i.as, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %1, %bb.d ] ; 7 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.l = load i8, ptr %i.h, align 1, !noalias !5296, !noundef !4 ; 5 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.g, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i: ; preds = %bb.f
  %i.n = and i8 %i.l, 31
  %i.o = zext nneg i8 %i.n to i32                 ; 3 uses
  %i.p = icmp ne ptr %i.k, %i.f
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !noalias !5296, !noundef !4
  %i.s = shl nuw nsw i32 %i.o, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = icmp samesign ugt i8 %i.l, -33
  br i1 %i.w, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = zext nneg i8 %i.l to i32
  br label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i
  %i.y = icmp ne ptr %i.q, %i.f
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  %i.aa = load i8, ptr %i.q, align 1, !noalias !5296, !noundef !4
  %i.ab = shl nuw nsw i32 %i.u, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 2 uses
  %i.af = shl nuw nsw i32 %i.o, 12
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = icmp samesign ugt i8 %i.l, -17
  br i1 %i.ah, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i
  %i.ai = icmp ne ptr %i.z, %i.f
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ak = load i8, ptr %i.z, align 1, !noalias !5296, !noundef !4
  %i.al = shl nuw nsw i32 %i.o, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ae, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i, %bb.g, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i
  %i.as = phi ptr [ %i.z, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i ], [ %i.k, %bb.g ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ag, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i ], [ %i.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i ], [ %i.x, %bb.g ] ; 2 uses
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.at)
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.au, %i.i                     ; 2 uses
  %i.aw = add i64 %i.av, %i.g
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.e [
    i32 92, label %bb.h
    i32 47, label %bb.h
  ]

bb.h:                                             ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %bb.h
  %.sink39 = phi ptr [ %1, %bb.c ], [ %i.ax, %bb.h ], [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %bb.e ]
  %.sink37 = phi i64 [ %2, %bb.c ], [ %i.av, %bb.h ], [ %2, %bb.a ], [ %2, %bb.b ], [ %2, %bb.e ]
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.h ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink39, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink37, ptr %i.az, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 1114112) i32 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9Shorthand3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.e ] ; 4 uses
  %i.a = load i8, ptr %.sroa.02.0, align 8, !range !592, !noundef !4
  switch i8 %i.a, label %default.unreachable28 [
    i8 0, label %bb.c
    i8 1, label %.lr.ph.i
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable28:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ %i.e, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 15
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !5312, !noalias !5315, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.j, -1
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.k = and i8 %i.j, 127
  switch i8 %i.k, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRecEE11map_or_elsecNvYcNtNtB5_7default7Default7defaultNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1K_9Shorthand3gets_0EB1M_.exit [
    i8 3, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.i
    i8 1, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.i.1
    i8 2, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.i.3
  ]

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5312, !noalias !5315
  switch i64 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRecEE11map_or_elsecNvYcNtNtB5_7default7Default7defaultNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1K_9Shorthand3gets_0EB1M_.exit [
    i64 3, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.us.i
    i64 1, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.us.i.1
    i64 2, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.us.i.3
  ]

_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.us.i: ; preds = %.lr.ph.split.us.i.preheader
  %i.n = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !5312, !noalias !5315, !nonnull !4 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1
  %i.p = xor i16 11822, %i.o
  %i.q = getelementptr i8, ptr %i.n, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = xor i16 46, %i.s
  %i.u = or i16 %i.p, %i.t
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.us.i.4

_RNCNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_9Shorthand3get0B9_.exit.us.i.1: ; preds = %.lr.ph.split.us.i.preheader
  %i.y = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !5312, !noalias !5315, !nonnull !4
  %rhsc30 = load i8, ptr %i.y, align 1
end_hunk_1
begin_hunk_2_@_RNvMsF_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_3Str3get:bb.a
  switch i32 %spec.select.i70.ph148, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit73 [
    i32 92, label %.invoke
    i32 34, label %.invoke
    i32 110, label %bb.ae
    i32 114, label %bb.af
    i32 116, label %bb.ag
    i32 117, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %.invoke

bb.af:                                            ; preds = %bb.ad
  br label %.invoke

bb.ag:                                            ; preds = %bb.ad
  br label %.invoke

.invoke:                                          ; preds = %bb.ad, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.fa = phi i32 [ 9, %bb.ag ], [ 13, %bb.af ], [ 10, %bb.ae ], [ %spec.select.i70.ph148, %bb.ad ], [ %spec.select.i70.ph148, %bb.ad ]
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d, i32 noundef %i.fa)
          to label %.backedge unwind label %bb.q

bb.ah:                                            ; preds = %bb.ad
  %.not.i.i.i76 = icmp eq i64 %i.u, %i.ez
  br i1 %.not.i.i.i76, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit73, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i: ; preds = %bb.ah
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ez
  %rhsc.i = load i8, ptr %i.fb, align 1, !noalias !5598
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.fc = icmp eq i8 %rhsc.fr.i, 123
  br i1 %i.fc, label %bb.ai, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit73

.backedge:                                        ; preds = %.invoke, %.loopexit, %.loopexit155, %bb.av, %bb.v
  %.sroa.21.0.be = phi i64 [ %i.df, %bb.v ], [ %.sroa.21.1, %.loopexit ], [ %.sroa.21.6, %bb.av ], [ %i.ez, %.invoke ], [ %.sroa.21.6, %.loopexit155 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.21.0.be
  %.not.i66 = icmp samesign eq i64 %.sroa.21.0.be, %i.u
  br i1 %.not.i66, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.p

bb.ai:                                            ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i
  %i.fe = add i64 %i.ez, 1                        ; 4 uses
  %i.ff = icmp eq i64 %i.u, %i.fe
  br i1 %i.ff, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.ai, %bb.ao
  %.sroa.21.4 = phi i64 [ %i.hf, %bb.ao ], [ %i.fe, %bb.ai ] ; 4 uses
  %i.fg = sub nuw i64 %i.u, %.sroa.21.4           ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.21.4 ; 4 uses
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !5601, !noalias !5604, !noundef !4 ; 5 uses
  %i.fj = icmp sgt i8 %i.fi, -1
  br i1 %i.fj, label %bb.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i: ; preds = %.lr.ph.i77
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fl = and i8 %i.fi, 31
  %i.fm = zext nneg i8 %i.fl to i32               ; 3 uses
  %i.fn = icmp samesign ne i64 %i.fg, 1
  call void @llvm.assume(i1 %i.fn)
  %i.fo = load i8, ptr %i.fk, align 1, !alias.scope !5601, !noalias !5604, !noundef !4
  %i.fp = shl nuw nsw i32 %i.fm, 6
  %i.fq = and i8 %i.fo, 63
  %i.fr = zext nneg i8 %i.fq to i32               ; 2 uses
  %i.fs = or disjoint i32 %i.fp, %i.fr
  %i.ft = icmp samesign ugt i8 %i.fi, -33
  br i1 %i.ft, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

bb.aj:                                            ; preds = %.lr.ph.i77
  %i.fu = zext nneg i8 %i.fi to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fw = icmp samesign ne i64 %i.fg, 2
  call void @llvm.assume(i1 %i.fw)
  %i.fx = load i8, ptr %i.fv, align 1, !alias.scope !5601, !noalias !5604, !noundef !4
  %i.fy = shl nuw nsw i32 %i.fr, 6
  %i.fz = and i8 %i.fx, 63
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = or disjoint i32 %i.fy, %i.ga            ; 2 uses
  %i.gc = shl nuw nsw i32 %i.fm, 12
  %i.gd = or disjoint i32 %i.gb, %i.gc
  %i.ge = icmp samesign ugt i8 %i.fi, -17
  br i1 %i.ge, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.gg = icmp samesign ne i64 %i.fg, 3
  call void @llvm.assume(i1 %i.gg)
  %i.gh = load i8, ptr %i.gf, align 1, !alias.scope !5601, !noalias !5604, !noundef !4
  %i.gi = shl nuw nsw i32 %i.fm, 18
  %i.gj = and i32 %i.gi, 1835008
  %i.gk = shl nuw nsw i32 %i.gb, 6
  %i.gl = and i8 %i.gh, 63
  %i.gm = zext nneg i8 %i.gl to i32
  %i.gn = or disjoint i32 %i.gk, %i.gm
  %i.go = or disjoint i32 %i.gn, %i.gj
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, %bb.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %.sroa.4.0.i.i.i = phi i32 [ %i.fu, %bb.aj ], [ %i.fs, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.go, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ], [ %i.gd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ] ; 9 uses
  %i.gp = add nsw i32 %.sroa.4.0.i.i.i, -48
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i32 %i.gp, 10
  %i.gq = icmp samesign ugt i32 %.sroa.4.0.i.i.i, 64
  %i.gr = icmp samesign ult i32 %.sroa.4.0.i.i.i, 71
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.gq, i1 %i.gr, i1 %.sroa.0.0.i.i.i.i.i.i
  %i.gs = icmp samesign ugt i32 %.sroa.4.0.i.i.i, 96
  %i.gt = icmp samesign ult i32 %.sroa.4.0.i.i.i, 103
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.gs, i1 %i.gt, i1 %.sroa.01.0.i.i.i.i.i.i
  br i1 %.sroa.02.0.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.gu = icmp samesign ult i32 %.sroa.4.0.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp samesign ult i32 %.sroa.4.0.i.i.i, 128
  br i1 %i.gv, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i.i.i, 2048
  br i1 %i.gw, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.i.i, 65536
  %..i.i79 = select i1 %i.gx, i64 3, i64 4
  br label %bb.ao

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i: ; preds = %bb.ao, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %bb.ai
  %.sroa.21.5 = phi i64 [ %i.u, %bb.ai ], [ %.sroa.21.4, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ %i.u, %bb.ao ] ; 5 uses
  %i.gy = icmp eq i64 %i.fe, 0
  br i1 %i.gy, label %bb.ap, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.fe)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.an
  %.sroa.0.01.i.i = phi i64 [ %i.hc, %bb.an ], [ %..i.i.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.not.i.i78 = icmp ult i64 %.sroa.0.01.i.i, %i.u
  br i1 %.not.i.i78, label %bb.am, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.01.i.i
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !5609, !noundef !4
  %i.hb = icmp sgt i8 %i.ha, -65
  br i1 %i.hb, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hc = add i64 %.sroa.0.01.i.i, -1             ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i, label %.lr.ph.i.i

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i: ; preds = %bb.an, %bb.am, %.lr.ph.i.i
  %.sroa.0.0.lcssa.i.ph.i = phi i64 [ %.sroa.0.01.i.i, %bb.am ], [ 0, %bb.an ], [ %.sroa.0.01.i.i, %.lr.ph.i.i ]
  %i.he = call i64 @llvm.umin.i64(i64 %.sroa.21.5, i64 %.sroa.0.0.lcssa.i.ph.i)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al, %bb.ak, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.sroa.3.0.i.ph.i = phi i64 [ %..i.i79, %bb.al ], [ 2, %bb.ak ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc17is_ascii_hexdigitECs5PEMdK7bMAG_12typst_syntax.exit.i.i ]
  %i.hf = add i64 %.sroa.3.0.i.ph.i, %.sroa.21.4  ; 2 uses
  %i.hg = icmp eq i64 %i.u, %i.hf
  br i1 %i.hg, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i, label %.lr.ph.i77

bb.ap:                                            ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i ], [ %i.he, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i ] ; 2 uses
  %i.hh = sub nuw i64 %.sroa.21.5, %.sroa.0.0.lcssa.i.i ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.0.lcssa.i.i ; 3 uses
  %.not.i.i.i80 = icmp eq i64 %i.u, %.sroa.21.5
  br i1 %.not.i.i.i80, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit85, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i81

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i81: ; preds = %bb.ap
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.21.5
  %rhsc.i82 = load i8, ptr %i.hj, align 1, !noalias !5610
  %rhsc.fr.i83 = freeze i8 %rhsc.i82
  %i.hk = icmp eq i8 %rhsc.fr.i83, 125
  %i.hl = zext i1 %i.hk to i64
  %spec.select153 = add i64 %.sroa.21.5, %i.hl
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit85

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit85: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i81, %bb.ap
  %.sroa.21.6 = phi i64 [ %i.u, %bb.ap ], [ %spec.select153, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i81 ] ; 4 uses
  switch i64 %i.hh, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit85
  %i.hm = load i8, ptr %i.hi, align 1, !alias.scope !5613, !noundef !4 ; 2 uses
  switch i8 %i.hm, label %bb.ar [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit85
  %.pr.i = load i8, ptr %i.hi, align 1, !alias.scope !5613
  br label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split.i, %bb.aq
  %i.hn = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.hm, %bb.aq ]
  %cond.i = icmp eq i8 %i.hn, 43                  ; 2 uses
  %i.ho = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.hh, %i.ho        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i86 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.hp = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.hp, label %.preheader.i, label %.preheader64.split.i.preheader

.preheader.i:                                     ; preds = %bb.ar
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.i.a

.preheader64.split.i:                             ; preds = %bb.as
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i227, i64 1
  %i.hr = add nsw i64 %.sroa.15.1.i226, -1        ; 2 uses
  %.not55.i = icmp eq i64 %i.hr, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader64.split.i.preheader

.loopexit.i:                                      ; preds = %.preheader64.split.i, %bb.at, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %5, %bb.at ], [ 0, %.preheader.i ], [ %i.ie, %.preheader64.split.i ]
  %i.hs = zext i32 %.sroa.045.1.i to i64
  %i.ht = shl nuw i64 %i.hs, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader64.split.i.preheader:                   ; preds = %bb.ar, %.preheader64.split.i
  %.sroa.0.1.i227 = phi ptr [ %i.hq, %.preheader64.split.i ], [ %.sroa.0.0.i86, %bb.ar ] ; 3 uses
  %.sroa.15.1.i226 = phi i64 [ %i.hr, %.preheader64.split.i ], [ %.sroa.15.0.i, %bb.ar ]
  %.sroa.045.0.i225 = phi i32 [ %i.ie, %.preheader64.split.i ], [ 0, %bb.ar ] ; 2 uses
  %i.hu = icmp ugt i32 %.sroa.045.0.i225, 268435455
  br i1 %i.hu, label %.split.us.i, label %bb.as, !prof !65

bb.as:                                            ; preds = %.preheader64.split.i.preheader
  %i.hv = shl nuw i32 %.sroa.045.0.i225, 4        ; 2 uses
  %i.hw = load i8, ptr %.sroa.0.1.i227, align 1, !alias.scope !5613, !noundef !4 ; 2 uses
  %i.hx = zext i8 %i.hw to i32                    ; 2 uses
  %i.hy = icmp ugt i8 %i.hw, 57
  %i.hz = add nsw i32 %i.hx, -65
  %i.ia = and i32 %i.hz, -33
  %i.ib = add nuw nsw i32 %i.ia, 10
  %i.ic = add nsw i32 %i.hx, -48
  %spec.select81.i = select i1 %i.hy, i32 %i.ib, i32 %i.ic ; 2 uses
  %i.id = icmp ugt i32 %spec.select81.i, 15
  %i.ie = add i32 %spec.select81.i, %i.hv         ; 3 uses
  %i.if = icmp ult i32 %i.ie, %i.hv
  %or.cond = select i1 %i.id, i1 true, i1 %i.if, !prof !826
  br i1 %or.cond, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader64.split.i, !prof !826

.split.us.i:                                      ; preds = %.preheader64.split.i.preheader
  %i.ig = load i8, ptr %.sroa.0.1.i227, align 1, !alias.scope !5613, !noundef !4 ; 2 uses
  %i.ih = zext i8 %i.ig to i32                    ; 2 uses
  %i.ii = icmp ugt i8 %i.ig, 57
  %i.ij = add nsw i32 %i.ih, -65
  %i.ik = and i32 %i.ij, -34
  %i.il = add nuw nsw i32 %i.ik, 10
  %i.im = add nsw i32 %i.ih, -48
  %.sroa.02.0.i58.i = select i1 %i.ii, i32 %i.il, i32 %i.im
  %i.in = icmp ult i32 %.sroa.02.0.i58.i, 16
  %spec.select.i87 = select i1 %i.in, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.split.i.a:                                 ; preds = %.preheader.i, %bb.at
  %.sroa.0.277.i = phi ptr [ %4, %bb.at ], [ %.sroa.0.0.i86, %.preheader.i ] ; 2 uses
  %.sroa.15.276.i = phi i64 [ %3, %bb.at ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.275.i = phi i32 [ %5, %bb.at ], [ 0, %.preheader.i ]
  %i.io = load i8, ptr %.sroa.0.277.i, align 1, !alias.scope !5613, !noundef !4 ; 2 uses
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  %i.iq = icmp ugt i8 %i.io, 57
  %i.ir = add nsw i32 %i.ip, -65
  %i.is = and i32 %i.ir, -33
  %i.it = add nuw nsw i32 %i.is, 10
  %i.iu = add nsw i32 %i.ip, -48
  %spec.select82.i.a = select i1 %i.iq, i32 %i.it, i32 %i.iu ; 2 uses
  %i.iv = icmp ult i32 %spec.select82.i.a, 16
  br i1 %i.iv, label %bb.at, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.at:                                            ; preds = %.lr.ph.split.i.a
  %2 = shl i32 %.sroa.045.275.i, 4
  %3 = add nsw i64 %.sroa.15.276.i, -1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.277.i, i64 1
  %5 = or disjoint i32 %spec.select82.i.a, %2     ; 2 uses
  %.not56.i = icmp eq i64 %3, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.split.i.a

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.split.us.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i87, %.split.us.i ], [ %i.ht, %.loopexit.i ] ; 3 uses
  %.sroa.552.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.552.0.extract.trunc = trunc nuw i64 %.sroa.552.0.extract.shift to i32 ; 2 uses
  %i.iw = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.iw, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.au

bb.au:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %i.ix = xor i32 %.sroa.552.0.extract.trunc, 55296
  %i.iy = add i32 %i.ix, -1114112
  %i.iz = icmp ult i32 %i.iy, -1112064
  br i1 %i.iz, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ja = icmp ult i64 %.sroa.8.0.insert.insert.i, 4785074604081152
  call void @llvm.assume(i1 %i.ja)
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d, i32 noundef %.sroa.552.0.extract.trunc)
          to label %.backedge unwind label %bb.q

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.as, %.lr.ph.split.i.a, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit85, %bb.aq, %bb.aq, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.au
  %i.jb = icmp eq ptr %.sroa.5.2.i, %i.ab
  br i1 %i.jb, label %.loopexit155, label %.lr.ph.i90.preheader

.lr.ph.i90.preheader:                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %..i.i89 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.dh)
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader, %bb.ax
  %.sroa.0.01.i91 = phi i64 [ %i.jf, %bb.ax ], [ %..i.i89, %.lr.ph.i90.preheader ] ; 5 uses
  %.not.i92 = icmp ult i64 %.sroa.0.01.i91, %i.u
  br i1 %.not.i92, label %bb.aw, label %.loopexit155.loopexit

bb.aw:                                            ; preds = %.lr.ph.i90
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.01.i91
  %i.jd = load i8, ptr %i.jc, align 1, !noundef !4
  %i.je = icmp sgt i8 %i.jd, -65
  br i1 %i.je, label %.loopexit155.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jf = add i64 %.sroa.0.01.i91, -1             ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %.loopexit155.loopexit, label %.lr.ph.i90

.loopexit155.loopexit:                            ; preds = %bb.ax, %bb.aw, %.lr.ph.i90
  %.sroa.0.0.lcssa.i94.ph = phi i64 [ %.sroa.0.01.i91, %bb.aw ], [ 0, %bb.ax ], [ %.sroa.0.01.i91, %.lr.ph.i90 ]
  %i.jh = call i64 @llvm.umin.i64(i64 %.sroa.21.6, i64 %.sroa.0.0.lcssa.i94.ph)
  br label %.loopexit155

.loopexit155:                                     ; preds = %.loopexit155.loopexit, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %.sroa.0.0.lcssa.i94 = phi i64 [ 0, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread ], [ %i.jh, %.loopexit155.loopexit ] ; 2 uses
  %i.ji = sub nuw i64 %.sroa.21.6, %.sroa.0.0.lcssa.i94
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.0.lcssa.i94
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jj, i64 noundef %i.ji)
          to label %.backedge unwind label %bb.q

.loopexit.loopexit:                               ; preds = %bb.aa, %bb.z, %.lr.ph.i
  %.sroa.0.0.lcssa.i.ph = phi i64 [ %.sroa.0.01.i, %bb.z ], [ 0, %bb.aa ], [ %.sroa.0.01.i, %.lr.ph.i ]
  %i.jk = call i64 @llvm.umin.i64(i64 %.sroa.21.1, i64 %.sroa.0.0.lcssa.i.ph)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit73
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit73 ], [ %i.jk, %.loopexit.loopexit ] ; 2 uses
  %i.jl = sub nuw i64 %.sroa.21.1, %.sroa.0.0.lcssa.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.0.lcssa.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jm, i64 noundef %i.jl)
          to label %.backedge unwind label %bb.q

bb.ay:                                            ; preds = %bb.q
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMsG_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9CodeBlock4body(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i, align 8, !range !592, !noundef !4
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5616, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !5616, !noundef !4
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %i.l = phi ptr [ %i.n, %bb.f ], [ %.sroa.0.0.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ] ; 4 uses
  %i.m = icmp eq ptr %i.l, %.sroa.3.0.i.i
  br i1 %i.m, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_4CodeEB5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.01.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.01.0.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i, align 1, !range !51, !alias.scope !5621, !noalias !5628, !noundef !4
  %.not.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 98
  br i1 %.not.i.i, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_4CodeEB5_.exit, label %bb.e

_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_4CodeEB5_.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.f ], [ @_RNvNvXs8o_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4CodeNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.e ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_RNvMsH_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4Code5exprs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i, align 8, !range !592, !noundef !4
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5631, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !5631, !noundef !4
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMsI_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_12ContentBlock4body(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i, align 8, !range !592, !noundef !4
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5634, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !5634, !noundef !4
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %i.l = phi ptr [ %i.n, %bb.f ], [ %.sroa.0.0.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ] ; 4 uses
  %i.m = icmp eq ptr %i.l, %.sroa.3.0.i.i
  br i1 %i.m, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_6MarkupEB5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.01.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.01.0.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i, align 1, !range !51, !alias.scope !5639, !noalias !5646, !noundef !4
end_hunk_2
