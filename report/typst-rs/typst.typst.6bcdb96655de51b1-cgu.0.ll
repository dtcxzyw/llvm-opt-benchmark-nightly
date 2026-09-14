Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvNtCs9fPPV5zPXBl_5typst7compile17print_diagnostics:bb.a
  %i.kz = icmp sgt i64 %.val4.i.i.i.i.i, 0
  br i1 %i.kz, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %.val5.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !37235, !noalias !37236, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37241
  br label %bb.bo

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.bh
  %i.la = load i64, ptr %i.aj, align 8, !range !64, !alias.scope !37242, !noalias !37243, !noundef !28 ; 3 uses
  %.sink22.i.shrunk.i.i.i.i.i = icmp ult i64 %i.la, -2
  %i.lb = select i1 %.sink22.i.shrunk.i.i.i.i.i, i64 2, i64 1
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.ks, i64 noundef %i.lb, i64 noundef 8, i64 noundef 48)
          to label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i unwind label %bb.bk, !noalias !37244

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %.pre.i.i117.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i111.i, align 8, !alias.scope !37239, !noalias !37240
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i, %bb.bh
  %i.lc = phi ptr [ %.pre.i.i117.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i ], [ %i.kr, %bb.bh ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [48 x i8], ptr %i.lc, i64 %i.ks ; 3 uses
  %.sroa.519.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.519.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i114.i, i64 32, i1 false), !noalias !37245
  store i64 %i.kv, ptr %i.ld, align 8, !noalias !37245
  %.sroa.418.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i116.i, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i, align 8, !noalias !37245
  %i.le = add nuw nsw i64 %i.ks, 1                ; 2 uses
  store i64 %i.le, ptr %.sroa.6.0..sroa_idx.i.i112.i, align 8, !alias.scope !37239, !noalias !37240
  br label %bb.bd

bb.bk:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterINtNtB2m_4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3Z_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitIBO_IB3x_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB64_EEs1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = icmp eq i64 %i.kv, 0
  br i1 %i.lg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i116.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i116.i, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37246
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

.body.i.i115.i:                                   ; preds = %bb.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #62, !noalias !37228
  br label %.body.i

bb.bm:                                            ; preds = %bb.ba, %bb.az, %bb.av
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.kk, %bb.av ], [ %i.kp, %bb.az ], [ %i.kp, %bb.ba ] ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.aw, align 8, !range !64, !alias.scope !37224, !noalias !37225, !noundef !28 ; 2 uses
  %i.lh = icmp sgt i64 %.val5.i.i.i, 0
  br i1 %i.lh, label %bb.bn, label %.body.i

bb.bn:                                            ; preds = %bb.bm
  %.val6.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i108.i, align 8, !alias.scope !37224, !noalias !37225, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37247
  br label %.body.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !37218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !37125
  %i.li = load i64, ptr %i.dc, align 8, !alias.scope !37248, !noalias !37249, !noundef !28 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 192153584101141163
  call void @llvm.assume(i1 %i.lj)
  br label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !37233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !37219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !37223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !37219
  %.pre1040.i = load ptr, ptr %i.cz, align 8, !alias.scope !37250, !noalias !37251 ; 3 uses
  %.pre1041.i = load i64, ptr %i.da, align 8, !alias.scope !37250, !noalias !37251 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !37218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !37125
  call void @llvm.experimental.noalias.scope.decl(metadata !37252)
  call void @llvm.experimental.noalias.scope.decl(metadata !37253)
  call void @llvm.experimental.noalias.scope.decl(metadata !37250)
  call void @llvm.experimental.noalias.scope.decl(metadata !37254)
  %i.lk = load i64, ptr %i.dc, align 8, !alias.scope !37255, !noalias !37256, !noundef !28 ; 5 uses
  %i.ll = load i64, ptr %i.db, align 8, !range !37, !alias.scope !37255, !noalias !37256, !noundef !28
  %i.lm = sub i64 %i.ll, %i.lk
  %i.ln = icmp ugt i64 %.pre1041.i, %i.lm
  br i1 %i.ln, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, !prof !37257

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i: ; preds = %bb.bo
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db, i64 noundef %i.lk, i64 noundef %.pre1041.i, i64 noundef 8, i64 noundef 48)
          to label %.noexc.i123.i unwind label %.body119.i, !noalias !37258

.noexc.i123.i:                                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i
  %i.lo = load i64, ptr %i.dc, align 8, !alias.scope !37259, !noalias !37256, !noundef !28 ; 2 uses
  %i.lp = icmp ult i64 %i.lo, 192153584101141163
  call void @llvm.assume(i1 %i.lp)
  br label %bb.bp

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.bo
  %i.lq = icmp ult i64 %i.lk, 192153584101141163
  call void @llvm.assume(i1 %i.lq)
  %.not.i.i121.i = icmp eq i64 %.pre1041.i, 0
  br i1 %.not.i.i121.i, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, %.noexc.i123.i
  %i.lr = phi i64 [ %i.lo, %.noexc.i123.i ], [ %i.lk, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 2 uses
  %i.ls = load ptr, ptr %i.dd, align 8, !alias.scope !37259, !noalias !37256, !nonnull !28, !noundef !28
  %i.lt = getelementptr inbounds nuw [48 x i8], ptr %i.ls, i64 %i.lr
  %i.lu = mul nuw nsw i64 %.pre1041.i, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lt, ptr nonnull readonly align 8 %.pre1040.i, i64 %i.lu, i1 false), !noalias !37260
  br label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.bp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i
  %i.lv = phi ptr [ %.pre1040.i, %bb.bp ], [ %.pre1040.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i ]
  %i.lw = phi i64 [ %.pre1041.i, %bb.bp ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i ]
  %i.lx = phi i64 [ %i.lr, %bb.bp ], [ %i.lk, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %i.li, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i ]
  %i.ly = add i64 %i.lx, %i.lw
  store i64 %i.ly, ptr %i.dc, align 8, !alias.scope !37259, !noalias !37256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 104, i1 false), !alias.scope !37261, !noalias !37262
  call void @llvm.experimental.noalias.scope.decl(metadata !37263)
  %.val2.i.i122.i = load i64, ptr %i.ax, align 8, !range !37, !alias.scope !37264, !noalias !37251, !noundef !28 ; 2 uses
  %i.lz = icmp eq i64 %.val2.i.i122.i, 0
  br i1 %i.lz, label %_RNvMs1_NtCscf0te1RqI9v_18codespan_reporting10diagnosticINtB5_10DiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE11with_labelsCs9fPPV5zPXBl_5typst.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.ma = mul nuw i64 %.val2.i.i122.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lv, i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !37265
  br label %_RNvMs1_NtCscf0te1RqI9v_18codespan_reporting10diagnosticINtB5_10DiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE11with_labelsCs9fPPV5zPXBl_5typst.exit.i

_RNvMs1_NtCscf0te1RqI9v_18codespan_reporting10diagnosticINtB5_10DiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE11with_labelsCs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.bq, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic5LabelNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !37125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !37125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !37125
  call void @llvm.experimental.noalias.scope.decl(metadata !37266)
  call void @llvm.experimental.noalias.scope.decl(metadata !37267)
  call void @llvm.experimental.noalias.scope.decl(metadata !37268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !37269
  store ptr %i.bj, ptr %i.ah, align 8, !noalias !37269
  store ptr @746, ptr %i.de, align 8, !noalias !37269
  store ptr %i.bf, ptr %i.df, align 8, !noalias !37269
  %i.mb = load i8, ptr %i.cd, align 1, !range !40, !alias.scope !37267, !noalias !37270, !noundef !28
  switch i8 %i.mb, label %default.unreachable [
    i8 0, label %bb.br
    i8 1, label %.invoke1576.i
    i8 2, label %bb.jo
  ]

default.unreachable:                              ; preds = %_RNvMs1_NtCscf0te1RqI9v_18codespan_reporting10diagnosticINtB5_10DiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE11with_labelsCs9fPPV5zPXBl_5typst.exit.i
  unreachable

bb.br:                                            ; preds = %_RNvMs1_NtCscf0te1RqI9v_18codespan_reporting10diagnosticINtB5_10DiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE11with_labelsCs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !37271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !37272
  store i64 0, ptr %i.ag, align 8, !noalias !37272
  store ptr inttoptr (i64 8 to ptr), ptr %i.dg, align 8, !noalias !37272
  store i64 0, ptr %i.dh, align 8, !noalias !37272
  %i.mc = load ptr, ptr %i.di, align 8, !alias.scope !37268, !noalias !37273, !nonnull !28, !noundef !28 ; 2 uses
  %i.md = load i64, ptr %i.dj, align 8, !alias.scope !37268, !noalias !37273, !noundef !28 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.md, 48
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.idx.i.i.i
  %i.mf = icmp eq i64 %i.md, 0
  br i1 %i.mf, label %._crit_edge499.i.i.i, label %.lr.ph498.i.i.i

.lr.ph498.i.i.i:                                  ; preds = %bb.br
  %i.mg = load i64, ptr %i.ci, align 8, !alias.scope !37267, !noalias !37270
  %i.mh = load i64, ptr %i.cj, align 8, !alias.scope !37267, !noalias !37270
  br label %bb.bs

bb.bs:                                            ; preds = %bb.dv, %.lr.ph498.i.i.i
  %.sroa.0.0496.i.i.i = phi i64 [ 0, %.lr.ph498.i.i.i ], [ %.sroa.0.2.i.i.i, %bb.dv ] ; 2 uses
  %.sroa.0225.0495.i.i.i = phi ptr [ %i.mc, %.lr.ph498.i.i.i ], [ %i.mi, %bb.dv ] ; 12 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !37272
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 40 ; 9 uses
  %i.mk = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 24 ; 8 uses
  %i.mm = load i64, ptr %i.ml, align 8, !noalias !37274, !noundef !28
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_index(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef %i.mk, i64 noundef %i.mm)
          to label %bb.bt unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

.thread103.loopexit.i.i.i:                        ; preds = %bb.ea, %._crit_edge485.i.i.i, %.lr.ph492.i.i.i
  %lpad.loopexit183.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread103.loopexit.split-lp.loopexit.i.i.i:      ; preds = %bb.ej, %bb.ec, %bb.dt, %._crit_edge493.i.i.i, %bb.dq, %bb.do, %bb.dj, %bb.dh, %._crit_edge, %bb.cb, %bb.by, %bb.bv, %bb.bs
  %lpad.loopexit185.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread103.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i: ; preds = %._crit_edge499.i.i.i
  %lpad.loopexit44.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread103.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i: ; preds = %bb.ei, %bb.da
  %lpad.loopexit.split-lp45.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.mn = load i64, ptr %i.af, align 8, !range !73, !noalias !37272, !noundef !28 ; 2 uses
  %.not.i.i127.i = icmp eq i64 %i.mn, -1
  %i.mo = load i64, ptr %i.dk, align 8, !noalias !37272 ; 7 uses
  br i1 %.not.i.i127.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.5232.0.copyload.i.i.i = load i64, ptr %.sroa.5232.0..sroa_idx.i.i.i, align 8, !noalias !37272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !37272
  store i64 %i.mn, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.mo, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %.sroa.5232.0.copyload.i.i.i, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  br label %.critedge.i.i.i

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !37272
  %i.mp = add i64 %i.mo, 1                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !37272
  %i.mq = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_range(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef %i.mq, i64 noundef %i.mo)
          to label %bb.bw unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

bb.bw:                                            ; preds = %bb.bv
  %i.mr = load i64, ptr %i.ae, align 8, !range !73, !noalias !37272, !noundef !28 ; 2 uses
  %.not407.i.i.i = icmp eq i64 %i.mr, -1
  %i.ms = load i64, ptr %i.dl, align 8, !noalias !37272 ; 6 uses
  %i.mt = load i64, ptr %i.dm, align 8, !noalias !37272 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !37272
  br i1 %.not407.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.mr, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.ms, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.mt, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  br label %.critedge.i.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !37272
  %i.mu = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 32 ; 3 uses
  %i.mw = load i64, ptr %i.mv, align 8, !noalias !37274, !noundef !28
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_index(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef %i.mu, i64 noundef %i.mw)
          to label %bb.bz unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

bb.bz:                                            ; preds = %bb.by
  %i.mx = load i64, ptr %i.ad, align 8, !range !73, !noalias !37272, !noundef !28 ; 2 uses
  %.not408.i.i.i = icmp eq i64 %i.mx, -1
  %i.my = load i64, ptr %i.dn, align 8, !noalias !37272 ; 8 uses
  br i1 %.not408.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.5259.0.copyload.i.i.i = load i64, ptr %.sroa.5259.0..sroa_idx.i.i.i, align 8, !noalias !37272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !37272
  store i64 %i.mx, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.my, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %.sroa.5259.0.copyload.i.i.i, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  br label %.critedge.i.i.i

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !37272
  %i.mz = add i64 %i.my, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !37272
  %i.na = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_range(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef %i.na, i64 noundef %i.my)
          to label %bb.cc unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

bb.cc:                                            ; preds = %bb.cb
  %i.nb = load i64, ptr %i.ac, align 8, !range !73, !noalias !37272, !noundef !28 ; 2 uses
  %.not410.i.i.i = icmp eq i64 %i.nb, -1
  %i.nc = load i64, ptr %i.do, align 8, !noalias !37272 ; 3 uses
  %i.nd = load i64, ptr %i.dp, align 8, !noalias !37272 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !37272
  br i1 %.not410.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i64 %i.nb, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.nc, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.nd, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  br label %.critedge.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ne = icmp eq i64 %i.mp, 0
  br i1 %i.ne, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.nf = call i64 @llvm.umax.i64(i64 %i.nh, i64 %.sroa.0.0496.i.i.i)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.ce
  %.sroa.073.0.lcssa.i.i.i = phi i64 [ %.sroa.0.0496.i.i.i, %bb.ce ], [ %i.nf, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.ng = icmp eq i64 %i.mz, 0
  br i1 %i.ng, label %._crit_edge479.i.i.i, label %.lr.ph478.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ce, %.lr.ph.i.i.i
  %.sroa.073.0474.i.i.i = phi i64 [ %i.nh, %.lr.ph.i.i.i ], [ 0, %bb.ce ]
  %.sroa.075.0473.i.i.i = phi i64 [ %i.ni, %.lr.ph.i.i.i ], [ %i.mp, %bb.ce ] ; 2 uses
  %i.nh = add i64 %.sroa.073.0474.i.i.i, 1        ; 2 uses
  %i.ni = udiv i64 %.sroa.075.0473.i.i.i, 10
  %i.nj = icmp ult i64 %.sroa.075.0473.i.i.i, 10
  br i1 %i.nj, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph478.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %.lr.ph478.i.i.i
  %.sroa.077.0476.i.i.i = phi i64 [ %i.nk, %.lr.ph478.i.i.i ], [ 0, %._crit_edge.i.i.i ]
  %.sroa.079.0475.i.i.i = phi i64 [ %i.nl, %.lr.ph478.i.i.i ], [ %i.mz, %._crit_edge.i.i.i ] ; 2 uses
  %i.nk = add i64 %.sroa.077.0476.i.i.i, 1        ; 2 uses
  %i.nl = udiv i64 %.sroa.079.0475.i.i.i, 10
  %i.nm = icmp ult i64 %.sroa.079.0475.i.i.i, 10
  br i1 %i.nm, label %._crit_edge479.loopexit.i.i.i, label %.lr.ph478.i.i.i

._crit_edge479.loopexit.i.i.i:                    ; preds = %.lr.ph478.i.i.i
  %i.nn = call i64 @llvm.umax.i64(i64 %i.nk, i64 %.sroa.073.0.lcssa.i.i.i)
  br label %._crit_edge479.i.i.i

._crit_edge479.i.i.i:                             ; preds = %._crit_edge479.loopexit.i.i.i, %._crit_edge.i.i.i
  %.sroa.077.0.lcssa.i.i.i = phi i64 [ %.sroa.073.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.nn, %._crit_edge479.loopexit.i.i.i ] ; 3 uses
  %i.no = load ptr, ptr %i.dg, align 8, !noalias !37272, !nonnull !28, !noundef !28 ; 3 uses
  %i.np = load i64, ptr %i.dh, align 8, !noalias !37272, !noundef !28 ; 5 uses
  %.idx2253 = mul nuw nsw i64 %i.np, 88
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 %.idx2253
  %i.nr = icmp eq i64 %i.np, 0
  br i1 %i.nr, label %._crit_edge, label %.lr.ph2228.preheader

.lr.ph2228.preheader:                             ; preds = %._crit_edge479.i.i.i
  %.val.i.i.i.i.i = load i16, ptr %i.mj, align 8, !range !30, !noalias !37277, !noundef !28
  br label %.lr.ph2228

bb.cf:                                            ; preds = %.lr.ph2228
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nu, i64 88 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.nq
  br i1 %i.nt, label %._crit_edge, label %.lr.ph2228

.lr.ph2228:                                       ; preds = %.lr.ph2228.preheader, %bb.cf
  %i.nu = phi ptr [ %i.ns, %bb.cf ], [ %i.no, %.lr.ph2228.preheader ] ; 10 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 80
  %.val1.i.i.i.i.i = load i16, ptr %i.nv, align 2, !range !30, !noalias !37277, !noundef !28
  %i.nw = icmp eq i16 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.nw, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.cf

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %.lr.ph2228
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 82 ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 2, !range !53, !noalias !37274, !noundef !28 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 42 ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 2, !range !53, !noalias !37274, !noundef !28 ; 2 uses
  %i.ob = icmp samesign ugt i8 %i.ny, %i.oa
  br i1 %i.ob, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit._crit_edge.i.i.i, label %bb.dg

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit._crit_edge.i.i.i: ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit.i.i.i
  %.pre.i.i135.i = load i64, ptr %i.ml, align 8, !noalias !37274
  br label %bb.dh

._crit_edge:                                      ; preds = %bb.cf, %._crit_edge479.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !37272
  %i.oc = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28 ; 2 uses
  %i.od = load i64, ptr %i.ml, align 8, !noalias !37274, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !37272
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files4name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef %i.oc)
          to label %bb.cg unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

bb.cg:                                            ; preds = %._crit_edge
  %i.oe = load i64, ptr %i.aa, align 8, !range !33, !noalias !37272, !noundef !28
  %i.of = trunc nuw i64 %i.oe to i1
  %.sroa.090.0.copyload.i.i.i = load i64, ptr %i.ds, align 8, !noalias !37272 ; 7 uses
  %.sroa.491.0.copyload.i.i.i = load ptr, ptr %.sroa.485.0..sroa_idx.i.i.i, align 8, !noalias !37272 ; 5 uses
  %.sroa.592.0.copyload.i.i.i = load i64, ptr %.sroa.586.0..sroa_idx.i.i.i, align 8, !noalias !37272 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !37272
  br i1 %i.of, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 %.sroa.090.0.copyload.i.i.i, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store ptr %.sroa.491.0.copyload.i.i.i, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %.sroa.592.0.copyload.i.i.i, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37272
  br label %.critedge.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.og = icmp eq i64 %.sroa.592.0.copyload.i.i.i, 0 ; 3 uses
  br i1 %i.og, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs9fPPV5zPXBl_5typst.exit.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ci
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !37278
  %i.oh = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.592.0.copyload.i.i.i, i64 noundef range(i64 1, 17) 1) #56, !noalias !37278 ; 3 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.592.0.copyload.i.i.i) #61
          to label %.noexc.i.i139.i unwind label %bb.cm, !noalias !37274

.noexc.i.i139.i:                                  ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr nonnull readonly align 1 %.sroa.491.0.copyload.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.592.0.copyload.i.i.i, i1 false), !noalias !37279
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs9fPPV5zPXBl_5typst.exit.i.i.i

.body.i.i136.i:                                   ; preds = %bb.cw, %bb.cr, %bb.cq, %bb.cm
  %.pn.i.i137.i = phi { ptr, i32 } [ %i.oq, %bb.cr ], [ %i.ok, %bb.cm ], [ %i.oq, %bb.cq ], [ %i.ox, %bb.cw ] ; 2 uses
  %i.oj = icmp eq i64 %.sroa.090.0.copyload.i.i.i, 0
  br i1 %i.oj, label %.thread.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.body.i.i136.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.491.0.copyload.i.i.i, i64 noundef %.sroa.090.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37280
  br label %.thread.i.i.i

end_hunk_0
begin_hunk_1_@_RNvNtCs9fPPV5zPXBl_5typst7compile17print_diagnostics:bb.a
  store i64 %i.or, ptr %i.dx, align 8, !noalias !37272
  store i64 %i.os, ptr %i.dy, align 8, !noalias !37272
  store i64 0, ptr %.sroa.5122.0..sroa_idx.i.i.i, align 8, !noalias !37272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false), !noalias !37272
  store i8 %i.ou, ptr %i.ea, align 2, !noalias !37272
  call void @llvm.experimental.noalias.scope.decl(metadata !37284)
  %i.ov = load i64, ptr %i.ag, align 8, !range !37, !alias.scope !37284, !noalias !37285, !noundef !28
  %i.ow = icmp eq i64 %i.np, %i.ov
  br i1 %i.ow, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  invoke fastcc void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBS_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEE8grow_oneCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %._crit_edge751.i.i.i unwind label %bb.cw, !noalias !37286

._crit_edge751.i.i.i:                             ; preds = %bb.cv
  %.pre752.i.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !37284, !noalias !37285
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.ox = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBH_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.ab) #62
          to label %.body.i.i136.i unwind label %bb.cx, !noalias !37287

bb.cx:                                            ; preds = %bb.cw
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !37288
  unreachable

bb.cy:                                            ; preds = %._crit_edge751.i.i.i, %bb.cu
  %i.oz = phi ptr [ %.pre752.i.i.i, %._crit_edge751.i.i.i ], [ %i.no, %bb.cu ] ; 2 uses
  %i.pa = getelementptr inbounds nuw [88 x i8], ptr %i.oz, i64 %i.np
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.pa, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.ab, i64 88, i1 false), !noalias !37287
  %i.pb = add i64 %i.np, 1                        ; 3 uses
  store i64 %i.pb, ptr %i.dh, align 8, !alias.scope !37284, !noalias !37285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37272
  %i.pc = icmp eq i64 %.sroa.090.0.copyload.i.i.i, 0
  br i1 %i.pc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit478.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.491.0.copyload.i.i.i, i64 noundef %.sroa.090.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37289
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit478.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit478.i.i.i: ; preds = %bb.cz, %bb.cy
  %.not413.i.i.i = icmp eq i64 %i.pb, 0
  br i1 %.not413.i.i.i, label %bb.da, label %bb.db, !prof !38

bb.da:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit478.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #61
          to label %bb.dc unwind label %.thread103.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i, !noalias !37274

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit478.i.i.i
  %i.pd = getelementptr [88 x i8], ptr %i.oz, i64 %i.pb
  %i.pe = getelementptr i8, ptr %i.pd, i64 -88
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  unreachable

bb.dd:                                            ; preds = %bb.dn, %bb.dl, %bb.dg, %bb.db
  %.sroa.094.0.i.i.i = phi ptr [ %i.nu, %bb.dn ], [ %i.nu, %bb.dl ], [ %i.nu, %bb.dg ], [ %i.pe, %bb.db ] ; 5 uses
  %i.pf = icmp eq i64 %i.mo, %i.my
  br i1 %i.pf, label %bb.ec, label %bb.do

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit475.i.i.i: ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37272
  %i.pg = icmp eq i64 %.sroa.090.0.copyload.i.i.i, 0
  br i1 %i.pg, label %.critedge.i.i.i, label %bb.de

bb.de:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit475.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.491.0.copyload.i.i.i, i64 noundef %.sroa.090.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37290
  br label %.critedge.i.i.i

bb.df:                                            ; preds = %.thread.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit540.i.i.i, %bb.ev, %.loopexit.split-lp.i.i.i
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !37274
  unreachable

bb.dg:                                            ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.pi = icmp eq i8 %i.ny, %i.oa
  br i1 %i.pi, label %bb.dl, label %bb.dd

bb.dh:                                            ; preds = %bb.dl, %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit._crit_edge.i.i.i
  %i.pj = phi i64 [ %.pre.i.i135.i, %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtBZ_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMBZ_IB1N_B2u_E6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesE0ECs9fPPV5zPXBl_5typst.exit._crit_edge.i.i.i ], [ %i.ps, %bb.dl ]
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  store i64 %i.pj, ptr %i.pk, align 8, !noalias !37274
  %i.pl = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28 ; 2 uses
  %i.pm = load i64, ptr %i.ml, align 8, !noalias !37274, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37291
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_index(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef range(i16 1, 0) %i.pl, i64 noundef %i.pm)
          to label %.noexc494.i.i.i unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

.noexc494.i.i.i:                                  ; preds = %bb.dh
  %i.pn = load i64, ptr %i.i, align 8, !range !73, !noalias !37291, !noundef !28 ; 2 uses
  %.not.i482.i.i.i = icmp eq i64 %i.pn, -1
  %i.po = load i64, ptr %i.dq, align 8, !noalias !37291 ; 3 uses
  br i1 %.not.i482.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.noexc494.i.i.i
  %.sroa.534.0.copyload.i484.i.i.i = load i64, ptr %.sroa.534.0..sroa_idx.i483.i.i.i, align 8, !noalias !37291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37291
  br label %bb.dm

bb.dj:                                            ; preds = %.noexc494.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !37291
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files13column_number(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef range(i16 1, 0) %i.pl, i64 noundef %i.po, i64 noundef %i.pm)
          to label %.noexc495.i.i.i unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

.noexc495.i.i.i:                                  ; preds = %bb.dj
  %i.pp = load i64, ptr %i.h, align 8, !range !73, !noalias !37291, !noundef !28 ; 2 uses
  %.not57.i487.i.i.i = icmp eq i64 %i.pp, -1
  br i1 %.not57.i487.i.i.i, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %.noexc495.i.i.i
  %.sroa.451.0.copyload.i489.i.i.i = load i64, ptr %i.dr, align 8, !noalias !37291
  %.sroa.552.0.copyload.i491.i.i.i = load i64, ptr %.sroa.552.0..sroa_idx.i490.i.i.i, align 8, !noalias !37291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37291
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dg
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !37274, !noundef !28
  %i.ps = load i64, ptr %i.ml, align 8, !noalias !37274, !noundef !28 ; 2 uses
  %i.pt = icmp ugt i64 %i.pr, %i.ps
  br i1 %i.pt, label %bb.dh, label %bb.dd

bb.dm:                                            ; preds = %bb.dk, %bb.di
  %.sroa.12.0.ph.i.i.i = phi i64 [ %.sroa.534.0.copyload.i484.i.i.i, %bb.di ], [ %.sroa.552.0.copyload.i491.i.i.i, %bb.dk ]
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.po, %bb.di ], [ %.sroa.451.0.copyload.i489.i.i.i, %bb.dk ]
  %.sroa.010.0.ph.i.i.i = phi i64 [ %i.pn, %bb.di ], [ %i.pp, %bb.dk ]
  store i64 %.sroa.010.0.ph.i.i.i, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %.sroa.12.0.ph.i.i.i, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  br label %.critedge.i.i.i

bb.dn:                                            ; preds = %.noexc495.i.i.i
  %i.pu = add i64 %i.po, 1
  %i.pv = load i64, ptr %i.dr, align 8, !noalias !37291, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37291
  %i.pw = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store i64 %i.pu, ptr %i.pw, align 8, !noalias !37274
  %i.px = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  store i64 %i.pv, ptr %i.px, align 8, !noalias !37274
  %i.py = load i8, ptr %i.nz, align 2, !range !53, !noalias !37274, !noundef !28
  store i8 %i.py, ptr %i.nx, align 2, !noalias !37274
  br label %bb.dd

bb.do:                                            ; preds = %bb.dd
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i.i.i, i64 48 ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !noalias !37274, !noundef !28 ; 4 uses
  %i.qb = add i64 %i.qa, 1
  store i64 %i.qb, ptr %i.pz, align 8, !noalias !37274
  %i.qc = load i64, ptr %i.ml, align 8, !noalias !37274, !noundef !28
  %i.qd = sub i64 %i.qc, %i.ms
  %i.qe = invoke fastcc noundef nonnull align 8 ptr @_RNvMNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticpE6renderINtB2_11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE18get_or_insert_lineCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %.sroa.094.0.i.i.i, i64 noundef %i.mo, i64 noundef %i.ms, i64 noundef %i.mt, i64 noundef %i.mp)
          to label %bb.dp unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274 ; 4 uses

bb.dp:                                            ; preds = %bb.do
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 42 ; 3 uses
  %i.qh = load i8, ptr %i.qg, align 2, !range !53, !noalias !37274, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !37292)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 40 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !alias.scope !37292, !noalias !37293, !noundef !28 ; 3 uses
  %i.qk = load i64, ptr %i.qf, align 8, !range !37, !alias.scope !37292, !noalias !37293, !noundef !28
  %i.ql = icmp eq i64 %i.qj, %i.qk
  br i1 %i.ql, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  invoke fastcc void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTjNtNtCscf0te1RqI9v_18codespan_reporting10diagnostic10LabelStyleNtNtNtBS_4term8renderer10MultiLabelEE8grow_oneCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qf) #63
          to label %bb.dr unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %i.qn = load ptr, ptr %i.qm, align 8, !alias.scope !37292, !noalias !37293, !nonnull !28, !noundef !28
  %i.qo = getelementptr inbounds nuw [48 x i8], ptr %i.qn, i64 %i.qj ; 4 uses
  store i64 %i.qa, ptr %i.qo, align 8, !noalias !37294
  %.sroa.448.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i8 %i.qh, ptr %.sroa.448.0..sroa_idx.i.i.i, align 8, !noalias !37294
  %.sroa.550.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store i64 0, ptr %.sroa.550.0..sroa_idx.i.i.i, align 8, !noalias !37294
  %.sroa.651.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  store i64 %i.qd, ptr %.sroa.651.0..sroa_idx.i.i.i, align 8, !noalias !37294
  %i.qp = add i64 %i.qj, 1
  store i64 %i.qp, ptr %i.qi, align 8, !alias.scope !37292, !noalias !37293
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qe, i64 72
  store i8 1, ptr %i.qq, align 8, !noalias !37274
  %i.qr = icmp ult i64 %i.mp, %i.my
  br i1 %i.qr, label %.lr.ph492.i.i.i, label %._crit_edge493.i.i.i

._crit_edge493.i.i.i:                             ; preds = %bb.eb, %bb.dr
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %.sroa.077.0.lcssa.i.i.i, %bb.dr ], [ %.sroa.0156.0.lcssa.i.i.i, %bb.eb ]
  %i.qs = load i64, ptr %i.mv, align 8, !noalias !37274, !noundef !28
  %i.qt = invoke fastcc noundef nonnull align 8 ptr @_RNvMNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticpE6renderINtB2_11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE18get_or_insert_lineCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %.sroa.094.0.i.i.i, i64 noundef %i.my, i64 noundef %i.nc, i64 noundef %i.nd, i64 noundef %i.mz)
          to label %bb.ds unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274 ; 4 uses

.lr.ph492.i.i.i:                                  ; preds = %bb.dr, %bb.eb
  %.sroa.0.1489.i.i.i.a = phi i64 [ %i.rp, %bb.eb ], [ %i.mp, %bb.dr ] ; 5 uses
  %.sroa.0300.0.in488.i.i.i = phi i64 [ %.sroa.0156.0.lcssa.i.i.i, %bb.eb ], [ %.sroa.077.0.lcssa.i.i.i, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !37272
  %i.qu = load i16, ptr %i.mj, align 8, !range !30, !noalias !37274, !noundef !28
  invoke void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_range(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, i16 noundef %i.qu, i64 noundef %.sroa.0.1489.i.i.i.a)
          to label %bb.dw unwind label %.thread103.loopexit.i.i.i, !noalias !37274

bb.ds:                                            ; preds = %._crit_edge493.i.i.i
  %i.qv = sub i64 %i.qs, %i.nc
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 24 ; 2 uses
  %i.qx = load i8, ptr %i.qg, align 2, !range !53, !noalias !37274, !noundef !28
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !37274, !nonnull !28, !noundef !28
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !noalias !37274, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !37295)
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 40 ; 2 uses
  %i.rd = load i64, ptr %i.rc, align 8, !alias.scope !37295, !noalias !37296, !noundef !28 ; 3 uses
  %i.re = load i64, ptr %i.qw, align 8, !range !37, !alias.scope !37295, !noalias !37296, !noundef !28
  %i.rf = icmp eq i64 %i.rd, %i.re
  br i1 %i.rf, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  invoke fastcc void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTjNtNtCscf0te1RqI9v_18codespan_reporting10diagnostic10LabelStyleNtNtNtBS_4term8renderer10MultiLabelEE8grow_oneCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qw) #63
          to label %bb.du unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8, !alias.scope !37295, !noalias !37296, !nonnull !28, !noundef !28
  %i.ri = getelementptr inbounds nuw [48 x i8], ptr %i.rh, i64 %i.rd ; 6 uses
  store i64 %i.qa, ptr %i.ri, align 8, !noalias !37297
  %.sroa.463.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store i8 %i.qx, ptr %.sroa.463.0..sroa_idx.i.i.i, align 8, !noalias !37297
  %.sroa.565.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store i64 2, ptr %.sroa.565.0..sroa_idx.i.i.i, align 8, !noalias !37297
  %.sroa.666.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  store i64 %i.qv, ptr %.sroa.666.0..sroa_idx.i.i.i, align 8, !noalias !37297
  %.sroa.767.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  store ptr %i.qz, ptr %.sroa.767.0..sroa_idx.i.i.i, align 8, !noalias !37297
  %.sroa.868.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  store i64 %i.rb, ptr %.sroa.868.0..sroa_idx.i.i.i, align 8, !noalias !37297
  %i.rj = add i64 %i.rd, 1
  store i64 %i.rj, ptr %i.rc, align 8, !alias.scope !37295, !noalias !37296
  br label %bb.dv

bb.dv:                                            ; preds = %bb.el, %bb.du
  %.sink1071.i.i.i = phi ptr [ %i.sr, %bb.el ], [ %i.qt, %bb.du ]
  %.sroa.0.2.i.i.i = phi i64 [ %.sroa.077.0.lcssa.i.i.i, %bb.el ], [ %.sroa.0.1.lcssa.i.i.i, %bb.du ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sink1071.i.i.i, i64 72
  store i8 1, ptr %i.rk, align 8, !noalias !37274
  %i.rl = icmp eq ptr %i.mi, %i.me
  br i1 %i.rl, label %._crit_edge499.i.i.i, label %bb.bs

bb.dw:                                            ; preds = %.lr.ph492.i.i.i
  %i.rm = load i64, ptr %i.z, align 8, !range !73, !noalias !37272, !noundef !28 ; 2 uses
  %.not416.i.i.i = icmp eq i64 %i.rm, -1
  %i.rn = load i64, ptr %i.eb, align 8, !noalias !37272 ; 2 uses
  %i.ro = load i64, ptr %i.ec, align 8, !noalias !37272 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !37272
  br i1 %.not416.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store i64 %i.rm, ptr %i.av, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.rn, ptr %.sroa.4234.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  store i64 %i.ro, ptr %.sroa.5235.0..sroa_idx.i.i.i, align 8, !alias.scope !37275, !noalias !37276
  br label %.critedge.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.rp = add i64 %.sroa.0.1489.i.i.i.a, 1        ; 5 uses
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %._crit_edge485.i.i.i, label %.lr.ph484.i.i.i

.lr.ph484.i.i.i:                                  ; preds = %bb.dy, %.lr.ph484.i.i.i
  %.sroa.0156.0482.i.i.i = phi i64 [ %i.rr, %.lr.ph484.i.i.i ], [ 0, %bb.dy ]
  %.sroa.0158.0481.i.i.i = phi i64 [ %i.rs, %.lr.ph484.i.i.i ], [ %i.rp, %bb.dy ] ; 2 uses
  %i.rr = add i64 %.sroa.0156.0482.i.i.i, 1       ; 2 uses
  %i.rs = udiv i64 %.sroa.0158.0481.i.i.i, 10
  %i.rt = icmp ult i64 %.sroa.0158.0481.i.i.i, 10
  br i1 %i.rt, label %._crit_edge485.loopexit.i.i.i, label %.lr.ph484.i.i.i

._crit_edge485.loopexit.i.i.i:                    ; preds = %.lr.ph484.i.i.i
  %i.ru = call i64 @llvm.umax.i64(i64 %i.rr, i64 %.sroa.0300.0.in488.i.i.i)
  br label %._crit_edge485.i.i.i

._crit_edge485.i.i.i:                             ; preds = %._crit_edge485.loopexit.i.i.i, %bb.dy
  %.sroa.0156.0.lcssa.i.i.i = phi i64 [ %.sroa.0300.0.in488.i.i.i, %bb.dy ], [ %i.ru, %._crit_edge485.loopexit.i.i.i ] ; 2 uses
  %i.rv = invoke fastcc noundef nonnull align 8 ptr @_RNvMNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticpE6renderINtB2_11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE18get_or_insert_lineCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %.sroa.094.0.i.i.i, i64 noundef %.sroa.0.1489.i.i.i.a, i64 noundef %i.rn, i64 noundef %i.ro, i64 noundef %i.rp)
          to label %bb.dz unwind label %.thread103.loopexit.i.i.i, !noalias !37274 ; 4 uses

bb.dz:                                            ; preds = %._crit_edge485.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24 ; 2 uses
  %i.rx = load i8, ptr %i.qg, align 2, !range !53, !noalias !37274, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !37298)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 40 ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !37298, !noalias !37299, !noundef !28 ; 3 uses
  %i.sa = load i64, ptr %i.rw, align 8, !range !37, !alias.scope !37298, !noalias !37299, !noundef !28
  %i.sb = icmp eq i64 %i.rz, %i.sa
  br i1 %i.sb, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  invoke fastcc void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTjNtNtCscf0te1RqI9v_18codespan_reporting10diagnostic10LabelStyleNtNtNtBS_4term8renderer10MultiLabelEE8grow_oneCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rw) #63
          to label %bb.eb unwind label %.thread103.loopexit.i.i.i, !noalias !37274

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !37298, !noalias !37299, !nonnull !28, !noundef !28
  %i.se = getelementptr inbounds nuw [48 x i8], ptr %i.sd, i64 %i.rz ; 3 uses
  store i64 %i.qa, ptr %i.se, align 8, !noalias !37300
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store i8 %i.rx, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !37300
  %.sroa.560.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store i64 1, ptr %.sroa.560.0..sroa_idx.i.i.i, align 8, !noalias !37300
  %i.sf = add i64 %i.rz, 1
  store i64 %i.sf, ptr %i.ry, align 8, !alias.scope !37298, !noalias !37299
  %i.sg = sub i64 %.sroa.0.1489.i.i.i.a, %i.mo
  %.not418.i.i.i = icmp ule i64 %i.sg, %i.mg
  %i.sh = sub nuw i64 %i.my, %.sroa.0.1489.i.i.i.a
  %i.si = icmp ule i64 %i.sh, %i.mh
  %narrow.i.i = select i1 %.not418.i.i.i, i1 true, i1 %i.si
  %.sroa.0162.0.i.i.i = zext i1 %narrow.i.i to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rv, i64 72 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 8, !range !53, !noalias !37274, !noundef !28
  %i.sl = or i8 %i.sk, %.sroa.0162.0.i.i.i
  store i8 %i.sl, ptr %i.sj, align 8, !noalias !37274
  %exitcond.not.i.i.i = icmp eq i64 %i.rp, %i.my
  br i1 %exitcond.not.i.i.i, label %._crit_edge493.i.i.i, label %.lr.ph492.i.i.i

bb.ec:                                            ; preds = %bb.dd
  %i.sm = load i64, ptr %i.ml, align 8, !noalias !37274, !noundef !28
  %i.sn = sub i64 %i.sm, %i.ms                    ; 6 uses
  %i.so = load i64, ptr %i.mv, align 8, !noalias !37274, !noundef !28
  %i.sp = sub i64 %i.so, %i.ms
  %i.sq = add i64 %i.sn, 1
  %..i497.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.sq, i64 %i.sp) ; 3 uses
  %i.sr = invoke fastcc noundef nonnull align 8 ptr @_RNvMNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticpE6renderINtB2_11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE18get_or_insert_lineCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %.sroa.094.0.i.i.i, i64 noundef %i.mo, i64 noundef %i.ms, i64 noundef %i.mt, i64 noundef %i.mp)
          to label %bb.ed unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274 ; 5 uses

bb.ed:                                            ; preds = %bb.ec
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !noalias !37274, !nonnull !28, !noundef !28 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !noalias !37274, !noundef !28 ; 12 uses
  switch i64 %i.sv, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread798.i.i.i
    i64 1, label %._crit_edge.i.i.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i, %bb.ed
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.ed ], [ %i.tk, %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [40 x i8], ptr %i.st, i64 %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %.val17.i.i.i.i = load i64, ptr %i.sw, align 8, !alias.scope !37301, !noalias !37302, !noundef !28 ; 2 uses
  %i.sx = call i8 @llvm.ucmp.i8.i64(i64 %.val17.i.i.i.i, i64 %i.sn)
  %i.sy = icmp eq i64 %.val17.i.i.i.i, %i.sn
  br i1 %i.sy, label %bb.ee, label %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i

bb.ee:                                            ; preds = %._crit_edge.i.i.i.i
  %i.sz = getelementptr i8, ptr %i.sw, i64 8
  %.val18.i.i.i.i = load i64, ptr %i.sz, align 8, !alias.scope !37301, !noalias !37302
  %i.ta = call i8 @llvm.ucmp.i8.i64(i64 %.val18.i.i.i.i, i64 %..i497.i.i.i)
  br label %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.ee, %._crit_edge.i.i.i.i
  %.sroa.0.0.i.i.i.i134.i = phi i8 [ %i.ta, %bb.ee ], [ %i.sx, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.tb = icmp eq i8 %.sroa.0.0.i.i.i.i134.i, 0
  br i1 %i.tb, label %bb.eh, label %bb.eg

.lr.ph.i.i.i.i:                                   ; preds = %bb.ed, %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i
  %.sroa.01.022.i.i.i.i = phi i64 [ %i.tl, %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i ], [ %i.sv, %bb.ed ] ; 2 uses
  %.sroa.05.021.i.i.i.i = phi i64 [ %i.tk, %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i ], [ 0, %bb.ed ] ; 2 uses
  %i.tc = lshr i64 %.sroa.01.022.i.i.i.i, 1       ; 2 uses
  %i.td = add nuw nsw i64 %i.tc, %.sroa.05.021.i.i.i.i ; 3 uses
  %i.te = icmp ult i64 %i.td, %i.sv
  call void @llvm.assume(i1 %i.te)
  %i.tf = getelementptr inbounds nuw [40 x i8], ptr %i.st, i64 %i.td ; 2 uses
  %.val13.i.i.i.i = load i64, ptr %i.tf, align 8, !alias.scope !37301, !noalias !37302, !noundef !28 ; 2 uses
  %i.tg = icmp eq i64 %.val13.i.i.i.i, %i.sn
  %i.th = icmp ugt i64 %.val13.i.i.i.i, %i.sn
  br i1 %i.tg, label %bb.ef, label %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ti = getelementptr i8, ptr %i.tf, i64 8
  %.val14.i.i.i.i = load i64, ptr %i.ti, align 8, !alias.scope !37301, !noalias !37302
  %i.tj = icmp ugt i64 %.val14.i.i.i.i, %..i497.i.i.i
  br label %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i

_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit20.i.i.i.i: ; preds = %bb.ef, %.lr.ph.i.i.i.i
  %.sroa.0.0.i19.i.i.i.i = phi i1 [ %i.tj, %bb.ef ], [ %i.th, %.lr.ph.i.i.i.i ]
  %i.tk = select i1 %.sroa.0.0.i19.i.i.i.i, i64 %.sroa.05.021.i.i.i.i, i64 %i.td, !unpredictable !28 ; 2 uses
  %i.tl = sub nuw nsw i64 %.sroa.01.022.i.i.i.i, %i.tc ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 1
  br i1 %i.tm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.eg:                                            ; preds = %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.tn = icmp eq i8 %.sroa.0.0.i.i.i.i134.i, -1
  %i.to = zext i1 %i.tn to i64
  %i.tp = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.to ; 2 uses
  %i.tq = icmp ule i64 %i.tp, %i.sv
  call void @llvm.assume(i1 %i.tq)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i.i, %_RNCINvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB5_14RichDiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE6renderNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesEs_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %i.tp, %bb.eg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37303)
  %i.tr = icmp ult i64 %i.sv, 230584300921369396
  call void @llvm.assume(i1 %i.tr)
  %i.ts = icmp ugt i64 %.sroa.4.0.i.i.i.i, %i.sv
  br i1 %i.ts, label %bb.ei, label %.thread798.i.i.i, !prof !37304

.thread798.i.i.i:                                 ; preds = %bb.eh, %bb.ed
  %.sroa.4.0.i800.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %bb.eh ], [ %i.sv, %bb.ed ] ; 3 uses
  %.in1073.i.i.i.a = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 42
  %i.tt = load i8, ptr %.in1073.i.i.i.a, align 2, !range !53, !noalias !37274, !noundef !28
  %.in1072.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 8
  %i.tu = load ptr, ptr %.in1072.i.i.i, align 8, !noalias !37274, !nonnull !28, !noundef !28
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0225.0495.i.i.i, i64 16
  %i.tv = load i64, ptr %.in.i.i.i, align 8, !noalias !37274, !noundef !28
  %i.tw = load i64, ptr %i.sr, align 8, !range !37, !alias.scope !37303, !noalias !37305, !noundef !28
  %i.tx = icmp eq i64 %i.sv, %i.tw
  br i1 %i.tx, label %bb.ej, label %.noexc507.i.i.i

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %.sroa.4.0.i.i.i.i, i64 noundef %i.sv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #65
          to label %.noexc506.i.i.i unwind label %.thread103.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i, !noalias !37274

.noexc506.i.i.i:                                  ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %.thread798.i.i.i
  invoke fastcc void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscf0te1RqI9v_18codespan_reporting10diagnostic10LabelStyleINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEReEE8grow_oneCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sr) #63
          to label %..noexc507_crit_edge.i.i.i unwind label %.thread103.loopexit.split-lp.loopexit.i.i.i, !noalias !37274

..noexc507_crit_edge.i.i.i:                       ; preds = %bb.ej
  %.pre753.i.i.i = load ptr, ptr %i.ss, align 8, !alias.scope !37303, !noalias !37305
  br label %.noexc507.i.i.i

.noexc507.i.i.i:                                  ; preds = %..noexc507_crit_edge.i.i.i, %.thread798.i.i.i
  %i.ty = phi ptr [ %.pre753.i.i.i, %..noexc507_crit_edge.i.i.i ], [ %i.st, %.thread798.i.i.i ]
  %i.tz = getelementptr inbounds nuw [40 x i8], ptr %i.ty, i64 %.sroa.4.0.i800.i.i.i ; 7 uses
  %i.ua = icmp samesign ult i64 %.sroa.4.0.i800.i.i.i, %i.sv
  br i1 %i.ua, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %.noexc507.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.uc = sub nuw nsw i64 %i.sv, %.sroa.4.0.i800.i.i.i
  %i.ud = mul nuw nsw i64 %i.uc, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ub, ptr nonnull align 8 %i.tz, i64 %i.ud, i1 false), !noalias !37306
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.noexc507.i.i.i
  store i64 %i.sn, ptr %i.tz, align 8, !noalias !37307
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %..i497.i.i.i, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !37307
  %.sroa.543.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i8 %i.tt, ptr %.sroa.543.0..sroa_idx.i.i.i, align 8, !noalias !37307
  %.sroa.645.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store ptr %i.tu, ptr %.sroa.645.0..sroa_idx.i.i.i, align 8, !noalias !37307
  %.sroa.746.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  store i64 %i.tv, ptr %.sroa.746.0..sroa_idx.i.i.i, align 8, !noalias !37307
  %i.ue = add nuw nsw i64 %i.sv, 1
  store i64 %i.ue, ptr %i.su, align 8, !alias.scope !37303, !noalias !37305
  br label %bb.dv

._crit_edge499.i.i.i:                             ; preds = %bb.dv, %bb.br
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ 0, %bb.br ], [ %.sroa.0.2.i.i.i, %bb.dv ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !37272
  %i.uf = load i8, ptr %i.ed, align 8, !range !120, !alias.scope !37268, !noalias !37273, !noundef !28 ; 6 uses
  %i.ug = load i64, ptr %i.ee, align 8, !range !55, !alias.scope !37268, !noalias !37273, !noundef !28
  %.not419.i.i.i = icmp eq i64 %i.ug, -1          ; 2 uses
  %i.uh = load ptr, ptr %i.ef, align 8, !alias.scope !37268, !noalias !37308, !nonnull !28
  %i.ui = load i64, ptr %i.eg, align 8, !alias.scope !37268, !noalias !37308
  %.sroa.5168.0.i.i.i = select i1 %.not419.i.i.i, i64 undef, i64 %i.ui
  %.sroa.0167.0.i.i.i = select i1 %.not419.i.i.i, ptr null, ptr %i.uh
  %i.uj = load ptr, ptr %i.eh, align 8, !alias.scope !37268, !noalias !37273, !nonnull !28, !noundef !28
  %i.uk = load i64, ptr %i.ei, align 8, !alias.scope !37268, !noalias !37273, !noundef !28
  invoke void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer13render_header(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i8 noundef %i.uf, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.0167.0.i.i.i, i64 %.sroa.5168.0.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uj, i64 noundef %i.uk)
          to label %bb.em unwind label %.thread103.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i, !noalias !37274

bb.em:                                            ; preds = %._crit_edge499.i.i.i
  %i.ul = load i64, ptr %i.y, align 8, !range !73, !noalias !37272, !noundef !28
  %.not420.i.i.i = icmp eq i64 %i.ul, -1
  br i1 %.not420.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !37276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !37272
  br label %.critedge.i.i.i

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !37272
  %i.um = load ptr, ptr %i.dg, align 8, !noalias !37272, !nonnull !28, !noundef !28 ; 4 uses
  %i.un = load i64, ptr %i.ag, align 8, !range !37, !noalias !37272, !noundef !28
  %i.uo = load i64, ptr %i.dh, align 8, !noalias !37272, !noundef !28 ; 2 uses
  %i.up = icmp ult i64 %i.uo, 104811045873349726
  call void @llvm.assume(i1 %i.up)
  %i.uq = getelementptr inbounds nuw [88 x i8], ptr %i.um, i64 %i.uo ; 4 uses
  store ptr %i.um, ptr %i.ej, align 8, !noalias !37272
  store ptr %i.um, ptr %.sroa.4170.0..sroa_idx.i.i.i, align 8, !noalias !37272
  store i64 %i.un, ptr %.sroa.5171.0..sroa_idx.i.i.i, align 8, !noalias !37272
  store ptr %i.uq, ptr %.sroa.6172.0..sroa_idx.i.i.i, align 8, !noalias !37272
  %i.ur = load i64, ptr %i.ev, align 8, !alias.scope !37268, !noalias !37308 ; 3 uses
  %i.us = icmp ult i64 %i.ur, 384307168202282326
  %i.ut = icmp eq i64 %i.ur, 0                    ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.hx, %bb.eo
  %i.uu = phi ptr [ %i.adr, %bb.hx ], [ %i.um, %bb.eo ] ; 5 uses
  %i.uv = phi i64 [ %.sroa.0.0.i517162.i.i.i, %bb.hx ], [ -2, %bb.eo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i)
  store i64 -2, ptr %i.l, align 8, !noalias !37272
  %.not421.i.i.i = icmp eq i64 %i.uv, -2
  br i1 %.not421.i.i.i, label %bb.eq, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB12_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.uw = icmp eq ptr %i.uu, %i.uq
  br i1 %i.uw, label %.loopexit170.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 88 ; 2 uses
  store ptr %i.ux, ptr %.sroa.4170.0..sroa_idx.i.i.i, align 8, !noalias !37272
  %.sroa.069.0.copyload70.i.i.i = load i64, ptr %i.uu, align 8, !noalias !37309
  %.sroa.9.0..sroa_idx71.i.i.i = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNvMNtNtCscf0te1RqI9v_18codespan_reporting4term5viewsINtB12_14RichDiagnosticpE6render11LabeledFileNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit540.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i133.i
  %.pn442.i.i.i = phi { ptr, i32 } [ %.pn440.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit540.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i133.i ], [ %lpad.loopexit180.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp181.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
end_hunk_1
