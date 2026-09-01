Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/divan_macros-87dd11d82ad24702.divan_macros.17ee72e99ff0e3fa-cgu.0?download=true
inline.NumInlined: 172
inline.NumDeleted: 127
begin_hunk_0_@_RNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB2_11AttrOptions5parse:bb.a
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 1, !noalias !71
  %i.ks = trunc nuw i8 %.sroa.0.0..sroa.0.0..sroa.0.0. to i1
  br i1 %i.ks, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.az:                                            ; preds = %bb.ax
  br i1 %i.kr, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kt = load ptr, ptr %i.eb, align 8, !noalias !71
  %i.ku = load i64, ptr %i.gz, align 8, !noalias !71
  %i.kv = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kt, i64 %i.ku, ptr nonnull @36, i64 12)
          to label %bb.bc unwind label %.loopexit.i.i.i.i, !noalias !71

bb.bb:                                            ; preds = %bb.az
  %.sroa.0115.0..sroa.0115.0..sroa.0115.0. = load i8, ptr %.sroa.0115, align 1, !noalias !71
  %i.kw = trunc nuw i8 %.sroa.0115.0..sroa.0115.0..sroa.0115.0. to i1
  br i1 %i.kw, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.kv, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kx = load ptr, ptr %i.eb, align 8, !noalias !71
  %i.ky = load i64, ptr %i.gz, align 8, !noalias !71
  %i.kz = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kx, i64 %i.ky, ptr nonnull @37, i64 11)
          to label %bb.bf unwind label %.loopexit.i.i.i.i, !noalias !71

bb.be:                                            ; preds = %bb.bc
  %.sroa.0116.0..sroa.0116.0..sroa.0116.0. = load i8, ptr %.sroa.0116, align 1, !noalias !71
  %i.la = trunc nuw i8 %.sroa.0116.0..sroa.0116.0..sroa.0116.0. to i1
  br i1 %i.la, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.kz, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.bk, ptr nonnull align 8 %i.el)
          to label %bb.bi unwind label %.loopexit.i.i.i.i, !noalias !71

bb.bh:                                            ; preds = %bb.bf
  %.sroa.0117.0..sroa.0117.0..sroa.0117.0. = load i8, ptr %.sroa.0117, align 1, !noalias !71
  %i.lb = trunc nuw i8 %.sroa.0117.0..sroa.0117.0..sroa.0117.0. to i1
  br i1 %i.lb, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.bi:                                            ; preds = %bb.bg
  %i.lc = load i64, ptr %i.bk, align 8, !noalias !71
  %.not9.i.i.i.i.i = icmp eq i64 %i.lc, -1
  br i1 %.not9.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ld = invoke i32 @_RNvXNtCslNEiUQgeYIG_3syn7spannedNtNtB4_4path4PathNtB2_7Spanned4spanCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.el)
          to label %bb.bt unwind label %bb.bm, !noalias !71

bb.bk:                                            ; preds = %bb.bi
  %i.le = load ptr, ptr %i.hc, align 8, !noalias !71
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.bi, ptr align 8 %i.le)
          to label %bb.bn unwind label %bb.bm, !noalias !71

bb.bl:                                            ; preds = %bb.bw, %bb.bm
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ll, %bb.bw ], [ %i.lf, %bb.bm ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtB12_5error5ErrorEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.bk) #19
          to label %bb.x unwind label %bb.cd, !noalias !67

bb.bm:                                            ; preds = %bb.bu, %bb.bt, %bb.bp, %bb.bn, %bb.bk, %bb.bj
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.bj, ptr nonnull align 8 %i.bi)
          to label %bb.bo unwind label %bb.bm, !noalias !71

bb.bo:                                            ; preds = %bb.bn
  %i.lg = load i64, ptr %i.bj, align 8, !noalias !71
  %i.lh = icmp eq i64 %i.lg, -1
  br i1 %i.lh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !noalias !71
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.em, ptr nonnull align 8 %i.bc, ptr nonnull align 8 @39)
          to label %bb.bs unwind label %bb.bm, !noalias !67

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bl, ptr noundef nonnull align 8 dereferenceable(176) %i.bj, i64 176, i1 false), !noalias !71
  br label %bb.br

bb.br:                                            ; preds = %bb.bx, %bb.bq
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtB12_5error5ErrorEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.bk)
          to label %bb.bz unwind label %bb.cc, !noalias !71

bb.bs:                                            ; preds = %bb.bp
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtB12_5error5ErrorEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.bk)
          to label %.invoke78.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !67

bb.bt:                                            ; preds = %bb.bj
  %i.li = invoke { i32, i1 } @_RNvMs9_NtCslNEiUQgeYIG_3syn3litNtB5_7LitBool3new(i1 zeroext true, i32 %i.ld)
          to label %bb.bu unwind label %bb.bm, !noalias !71 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.lj = extractvalue { i32, i1 } %i.li, 0
  %i.lk = extractvalue { i32, i1 } %i.li, 1
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCslNEiUQgeYIG_3syn3lit7LitBoolINtB5_4IntoNtBA_3LitE4intoCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.bg, i32 %i.lj, i1 zeroext %i.lk, ptr nonnull align 8 @40)
          to label %bb.bv unwind label %bb.bm, !noalias !71

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeE3newBF_(ptr nonnull sret([24 x i8]) align 8 %i.bf)
          to label %bb.bx unwind label %bb.bw, !noalias !71

bb.bw:                                            ; preds = %bb.bv
  %i.ll = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn3lit3LitEBF_(ptr nonnull align 8 %i.bg) #19
          to label %bb.bl unwind label %bb.cd, !noalias !71

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false), !noalias !71
  store i64 19, ptr %i.bl, align 8, !noalias !71
  br label %bb.br

bb.by:                                            ; preds = %bb.ca
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.bz:                                            ; preds = %bb.br
  invoke fastcc void @_RNvXs15_CsghEUimwObfx_11proc_macro2NtB6_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs23nXHpKt6Eo_12divan_macros(ptr noalias align 8 %i.bd, ptr nonnull align 8 %i.ix)
          to label %bb.ca unwind label %bb.cc, !noalias !71

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.hd, ptr noundef nonnull align 8 dereferenceable(176) %i.bl, i64 176, i1 false), !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !71
  invoke fastcc void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn4expr4ExprEE4pushCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.ft, ptr align 8 %i.be)
          to label %bb.cb unwind label %bb.by, !noalias !71

bb.cb:                                            ; preds = %bb.ie, %bb.hr, %bb.gz, %bb.fz, %bb.ff, %bb.el, %bb.du, %bb.dd, %bb.ca
  store i64 -1, ptr %i.em, align 8, !alias.scope !68, !noalias !67
  br label %.invoke78.i.i.i.i.i

.invoke78.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit61.i.i.i.i.i, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit.i.i.i.i.i, %bb.he, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit.i.i.i.i, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse0s_0B8_.exit.i.i.i.i.i, %bb.ge, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse0s_0B8_.exit.i.i.i.i, %bb.et, %bb.cb, %bb.bs
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.ec)
          to label %_RNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4_11AttrOptions5parse0B6_.exit.i.i.i.i unwind label %bb.t, !noalias !67

bb.cc:                                            ; preds = %bb.bz, %bb.br
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.bl) #19
          to label %bb.x unwind label %bb.cd, !noalias !71

bb.cd:                                            ; preds = %bb.gi, %bb.fi, %bb.do, %bb.cc, %bb.bw, %bb.bl, %bb.x, %bb.s
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !67
  unreachable

bb.ce:                                            ; preds = %bb.bh, %bb.be, %bb.bb, %bb.ay
  %i.ln = load ptr, ptr %i.eb, align 8, !noalias !71
  %i.lo = load i64, ptr %i.gz, align 8, !noalias !71
  %i.lp = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.ln, i64 %i.lo, ptr nonnull @34, i64 11)
          to label %bb.cf unwind label %.loopexit.i.i.i.i, !noalias !71

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.lp, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lq = load ptr, ptr %i.eb, align 8, !noalias !71
  %i.lr = load i64, ptr %i.gz, align 8, !noalias !71
  %i.ls = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.lq, i64 %i.lr, ptr nonnull @35, i64 11)
          to label %bb.ch unwind label %.loopexit.i.i.i.i, !noalias !71

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.ls, label %bb.co, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lt = load ptr, ptr %i.eb, align 8, !noalias !71
  %i.lu = load i64, ptr %i.gz, align 8, !noalias !71
  %i.lv = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.lt, i64 %i.lu, ptr nonnull @36, i64 12)
          to label %bb.cj unwind label %.loopexit.i.i.i.i, !noalias !71

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.lv, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lw = load ptr, ptr %i.eb, align 8, !noalias !71
  %i.lx = load i64, ptr %i.gz, align 8, !noalias !71
  %i.ly = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.lw, i64 %i.lx, ptr nonnull @37, i64 11)
          to label %bb.cl unwind label %.loopexit.i.i.i.i, !noalias !71

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ly, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @41, i64 40, ptr nonnull align 8 @42) #18
          to label %bb.cn unwind label %.loopexit.split-lp.i.i.i.i, !noalias !71

bb.cn:                                            ; preds = %bb.cm
  unreachable

bb.co:                                            ; preds = %bb.cl, %bb.cj, %bb.ch, %bb.cf
  %.sink.i.i.sroa.phi.sroa.speculated.pre-phi.i.i.i = phi ptr [ %.sroa.0117, %bb.cl ], [ %.sroa.0116, %bb.cj ], [ %.sroa.0115, %bb.ch ], [ %.sroa.0, %bb.cf ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 10, %bb.cl ], [ 11, %bb.cj ], [ 10, %bb.ch ], [ 10, %bb.cf ]
  %.sroa.03.0.i.i.i.i.i = phi ptr [ @43, %bb.cl ], [ @44, %bb.cj ], [ @45, %bb.ch ], [ @46, %bb.cf ]
  store i8 1, ptr %.sink.i.i.sroa.phi.sroa.speculated.pre-phi.i.i.i, align 1, !noalias !71
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr nonnull align 8 %i.el)
          to label %bb.cp unwind label %.loopexit.i.i.i.i, !noalias !71

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.bs, ptr nonnull align 8 %i.br)
          to label %bb.cq unwind label %.loopexit.i.i.i.i, !noalias !71

bb.cq:                                            ; preds = %bb.cp
  %i.lz = load i64, ptr %i.bs, align 8, !noalias !71
  %.not11.i.i.i.i.i = icmp eq i64 %i.lz, -1
  br i1 %.not11.i.i.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !71
  br label %.invoke.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.ma = load ptr, ptr %i.hf, align 8, !noalias !71
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.bt, ptr align 8 %i.ma)
          to label %bb.ct unwind label %.loopexit.i.i.i.i, !noalias !71

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.bu, ptr nonnull align 8 %i.bt)
          to label %bb.cu unwind label %.loopexit.i.i.i.i, !noalias !71

bb.cu:                                            ; preds = %bb.ct
  %i.mb = load i64, ptr %i.bu, align 8, !noalias !71
  %i.mc = icmp eq i64 %i.mb, -1
  br i1 %i.mc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 24, i1 false), !noalias !71
  br label %.invoke.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bo, ptr noundef nonnull align 8 dereferenceable(176) %i.bu, i64 176, i1 false), !noalias !71
  invoke void @_RNvYNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamB6_(ptr nonnull sret([32 x i8]) align 8 %i.bp, ptr nonnull align 8 %i.bo)
          to label %bb.cy unwind label %bb.cx, !noalias !71

bb.cx:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !71
  store ptr %.sroa.03.0.i.i.i.i.i, ptr %i.hg, align 8, !noalias !71
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %i.hh, align 8, !noalias !71
  invoke fastcc void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsghEUimwObfx_11proc_macro211TokenStreamINtNtCs4NRVxsYgnAr_4core6option6OptionReEEE4pushCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fs, ptr align 8 %i.bq)
          to label %bb.cz unwind label %bb.cx, !noalias !71

bb.cz:                                            ; preds = %bb.cy
  %i.me = invoke i32 @_RNvMsi_CsghEUimwObfx_11proc_macro2NtB5_4Span9call_site()
          to label %bb.da unwind label %bb.cx, !noalias !71

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr nonnull @33, i64 8, i32 %i.me, ptr nonnull align 8 @47)
          to label %bb.db unwind label %bb.cx, !noalias !71

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !71
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECslNEiUQgeYIG_3syn(ptr nonnull align 8 %i.fr)
          to label %bb.dd unwind label %bb.dc, !noalias !71

bb.dc:                                            ; preds = %bb.db
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !71
  br label %bb.x

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !71
  br label %bb.cb

bb.de:                                            ; preds = %bb.av
  br i1 %i.ko, label %.invoke75.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.by, ptr nonnull align 8 %i.el)
          to label %bb.dg unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.by)
          to label %bb.dh unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dh:                                            ; preds = %bb.dg
  %i.mg = load i64, ptr %i.bz, align 8, !noalias !71
  %.not14.i.i.i.i.i = icmp eq i64 %i.mg, -1
  br i1 %.not14.i.i.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !noalias !71
  br label %.invoke.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.mh = load ptr, ptr %i.hj, align 8, !noalias !71
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr9ExprArrayECs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([72 x i8]) align 8 %i.ca, ptr align 8 %i.mh)
          to label %bb.dk unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr9ExprArrayNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([72 x i8]) align 8 %i.cb, ptr nonnull align 8 %i.ca)
          to label %bb.dl unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dl:                                            ; preds = %bb.dk
  %i.mi = load i64, ptr %i.cb, align 8, !noalias !71
  %i.mj = icmp eq i64 %i.mi, -1
  br i1 %i.mj, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !noalias !71
  br label %.invoke.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.cb, i64 72, i1 false), !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i64 32, i1 false), !noalias !71
  invoke fastcc void @_RNvXs8_NtCslNEiUQgeYIG_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs23nXHpKt6Eo_12divan_macros(ptr noalias align 8 %i.bx, ptr align 8 %i.bw)
          to label %bb.dq unwind label %bb.dp, !noalias !71

bb.do:                                            ; preds = %bb.dt, %bb.dp
  %.pn15.i.i.i.i.i = phi { ptr, i32 } [ %i.ml, %bb.dt ], [ %i.mk, %bb.dp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.cc) #19
          to label %bb.x unwind label %bb.cd, !noalias !71

bb.dp:                                            ; preds = %bb.dr, %bb.dq, %bb.dn
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  invoke fastcc void @_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtCsghEUimwObfx_11proc_macro211TokenStreamINtNtCs4NRVxsYgnAr_4core6option6OptionReEEEINtNtNtNtB1r_4iter6traits7collect6ExtendBF_E6extendINtNtNtB2a_8adapters3map3MapINtNtCslNEiUQgeYIG_3syn10punctuated8IntoIterNtNtB3p_4expr4ExprENCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4s_11AttrOptions5parse0s0_0EEB4u_(ptr nonnull align 8 %i.fs, ptr align 8 %i.bx)
          to label %bb.dr unwind label %bb.dp, !noalias !71

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RNvXs15_CsghEUimwObfx_11proc_macro2NtB6_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs23nXHpKt6Eo_12divan_macros(ptr noalias align 8 %i.bv, ptr nonnull align 8 %i.ix)
          to label %bb.ds unwind label %bb.dp, !noalias !71

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECslNEiUQgeYIG_3syn(ptr nonnull align 8 %i.fr)
          to label %bb.du unwind label %bb.dt, !noalias !71

bb.dt:                                            ; preds = %bb.ds
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !71
  br label %bb.do

bb.du:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !71
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.cc)
          to label %bb.cb unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dv:                                            ; preds = %bb.as
  br i1 %i.kk, label %.invoke75.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.ci, ptr nonnull align 8 %i.el)
          to label %bb.dx unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.cj, ptr nonnull align 8 %i.ci)
          to label %bb.dy unwind label %.loopexit.i.i.i.i, !noalias !71

bb.dy:                                            ; preds = %bb.dx
  %i.mm = load i64, ptr %i.cj, align 8, !noalias !71
  %.not17.i.i.i.i.i = icmp eq i64 %i.mm, -1
  br i1 %.not17.i.i.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !71
  br label %.invoke.i.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.mn = load ptr, ptr %i.hm, align 8, !noalias !71
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.ck, ptr align 8 %i.mn)
          to label %bb.eb unwind label %.loopexit.i.i.i.i, !noalias !71

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.cl, ptr nonnull align 8 %i.ck)
          to label %bb.ec unwind label %.loopexit.i.i.i.i, !noalias !71

bb.ec:                                            ; preds = %bb.eb
  %i.mo = load i64, ptr %i.cl, align 8, !noalias !71
  %i.mp = icmp eq i64 %i.mo, -1
  br i1 %i.mp, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i64 24, i1 false), !noalias !71
  br label %.invoke.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cf, ptr noundef nonnull align 8 dereferenceable(176) %i.cl, i64 176, i1 false), !noalias !71
  invoke void @_RNvYNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamB6_(ptr nonnull sret([32 x i8]) align 8 %i.cg, ptr nonnull align 8 %i.cf)
          to label %bb.eg unwind label %bb.ef, !noalias !71

bb.ef:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

end_hunk_0
