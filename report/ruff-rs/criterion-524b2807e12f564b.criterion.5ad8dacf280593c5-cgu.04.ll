Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.04?download=true
inline.NumInlined: 559
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtBa_6option6OptionReENCINvMB8_SB17_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2a_14BenchmarkGroup3news_0E0EB2c_:bb.a

bb.l:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENCINvMB8_SB15_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB28_14BenchmarkGroup3news_0E0EB2a_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.096167, i64 %i.as
  %i.ct = call { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.023.094169), !noalias !411 ; 2 uses
  %i.cu = extractvalue { i64, double } %i.ct, 0
  %i.cv = extractvalue { i64, double } %i.ct, 1
  %i.cw = call { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cs) ; 2 uses
  %i.cx = extractvalue { i64, double } %i.cw, 0
  %i.cy = extractvalue { i64, double } %i.cw, 1
  %i.cz = trunc nuw i64 %i.cu to i1
  %i.da = trunc nuw i64 %i.cx to i1               ; 2 uses
  %i.db = fcmp ult double %i.cv, %i.cy
  %spec.select.i = select i1 %i.da, i1 %i.db, i1 false
  %.sroa.0.0.i.i = select i1 %i.cz, i1 %spec.select.i, i1 %i.da
  br i1 %.sroa.0.0.i.i, label %bb.g, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE14swap_uncheckedCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.096167, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.095168, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.096167, i64 16 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !424, !noalias !425, !noundef !14
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.096167, i64 24
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !424, !noalias !425
  store ptr %i.dd, ptr %i.a, align 8, !noalias !422
  store i64 %i.df, ptr %i.d, align 8, !noalias !422
  %i.dg = getelementptr [16 x i8], ptr %.sroa.0.096167, i64 %.sroa.15.095168 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -16    ; 2 uses
  %.sroa.13.041.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.096167, i64 32 ; 3 uses
  %i.di = icmp ult ptr %.sroa.13.041.i.i41, %i.dh
  br i1 %i.di, label %.lr.ph.i.i57, label %.preheader.i.i42.preheader

.preheader.i.i42.preheader:                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i, %bb.m
  %.sroa.23.1.i.i46.ph = phi i64 [ 0, %bb.m ], [ %i.ex, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i ]
  %.sroa.13.1.i.i47.ph = phi ptr [ %.sroa.13.041.i.i41, %bb.m ], [ %.sroa.13.0.i.i66, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i ]
  %.sroa.022.1.i.i48.ph = phi ptr [ %i.dc, %bb.m ], [ %i.ek, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i ]
  br label %.preheader.i.i42

.preheader.i.i42:                                 ; preds = %.preheader.i.i42.preheader, %bb.n
  %.sroa.23.1.i.i46 = phi i64 [ %i.dw, %bb.n ], [ %.sroa.23.1.i.i46.ph, %.preheader.i.i42.preheader ] ; 2 uses
  %.sroa.13.1.i.i47 = phi ptr [ %.sroa.13.1.sroa.gep.i.i55, %bb.n ], [ %.sroa.13.1.i.i47.ph, %.preheader.i.i42.preheader ] ; 4 uses
  %.sroa.022.1.i.i48 = phi ptr [ %.sroa.13.1.i.i47, %bb.n ], [ %.sroa.022.1.i.i48.ph, %.preheader.i.i42.preheader ] ; 2 uses
  %i.dj = icmp eq ptr %.sroa.13.1.i.i47, %i.dg    ; 2 uses
  %.sroa.01.0.i.i49 = select i1 %i.dj, ptr %i.a, ptr %.sroa.13.1.i.i47 ; 2 uses
  %i.dk = invoke { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.096167)
          to label %.noexc.i.i54 unwind label %.loopexit.i.i50 ; 2 uses

.noexc.i.i54:                                     ; preds = %.preheader.i.i42
  %i.dl = invoke { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.01.0.i.i49)
          to label %bb.n unwind label %.loopexit.i.i50 ; 2 uses

bb.n:                                             ; preds = %.noexc.i.i54
  %i.dm = extractvalue { i64, double } %i.dk, 1
  %i.dn = extractvalue { i64, double } %i.dk, 0
  %i.do = extractvalue { i64, double } %i.dl, 0
  %i.dp = extractvalue { i64, double } %i.dl, 1
  %i.dq = trunc nuw i64 %i.dn to i1
  %i.dr = trunc nuw i64 %i.do to i1               ; 2 uses
  %i.ds = fcmp ult double %i.dm, %i.dp
  %spec.select.i.i.i.i.i = select i1 %i.dr, i1 %i.ds, i1 false
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.dq, i1 %spec.select.i.i.i.i.i, i1 %i.dr
  %i.dt = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.23.1.i.i46 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.022.1.i.i48, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !alias.scope !424, !noalias !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i49, i64 16, i1 false), !noalias !426
  %i.dv = zext i1 %i.dt to i64
  %i.dw = add i64 %.sroa.23.1.i.i46, %i.dv        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i55 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i47, i64 16
  br i1 %i.dj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2W_14BenchmarkGroup3news_0E0E0EB2Y_.exit.i, label %.preheader.i.i42

.lr.ph.i.i57:                                     ; preds = %bb.m, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i
  %.sroa.13.044.i.i58 = phi ptr [ %.sroa.13.0.i.i66, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i ], [ %.sroa.13.041.i.i41, %bb.m ] ; 5 uses
  %.sroa.022.043.i.i59 = phi ptr [ %i.ek, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i ], [ %i.dc, %bb.m ] ; 5 uses
  %.sroa.23.042.i.i60 = phi i64 [ %i.ex, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.dx = invoke { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.096167)
          to label %.noexc14.i.i64 unwind label %.loopexit.split-lp.i.i61 ; 2 uses

.noexc14.i.i64:                                   ; preds = %.lr.ph.i.i57
  %i.dy = invoke { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.13.044.i.i58)
          to label %bb.o unwind label %.loopexit.split-lp.i.i61 ; 2 uses

bb.o:                                             ; preds = %.noexc14.i.i64
  %i.dz = extractvalue { i64, double } %i.dx, 1
  %i.ea = extractvalue { i64, double } %i.dx, 0
  %i.eb = extractvalue { i64, double } %i.dy, 0
  %i.ec = extractvalue { i64, double } %i.dy, 1
  %i.ed = trunc nuw i64 %i.ea to i1
  %i.ee = trunc nuw i64 %i.eb to i1               ; 2 uses
  %i.ef = fcmp ult double %i.dz, %i.ec
  %spec.select.i.i.i12.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  %.sroa.0.0.i.i.i.i13.i.i = select i1 %i.ed, i1 %spec.select.i.i.i12.i.i, i1 %i.ee
  %i.eg = xor i1 %.sroa.0.0.i.i.i.i13.i.i, true
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.23.042.i.i60 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.022.043.i.i59, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !alias.scope !424, !noalias !429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i58, i64 16, i1 false), !alias.scope !424, !noalias !429
  %i.ei = zext i1 %i.eg to i64
  %i.ej = add i64 %.sroa.23.042.i.i60, %i.ei      ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.022.043.i.i59, i64 32 ; 4 uses
  %i.el = invoke { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.096167)
          to label %.noexc19.i.i65 unwind label %.loopexit.split-lp.i.i61 ; 2 uses

.noexc19.i.i65:                                   ; preds = %bb.o
  %i.em = invoke { i64, double } @_RNvNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB7_14BenchmarkGroup3new9parse_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ek)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i unwind label %.loopexit.split-lp.i.i61 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2Y_14BenchmarkGroup3news_0E0E0E0B30_.exit21.i.i: ; preds = %.noexc19.i.i65
  %i.en = extractvalue { i64, double } %i.el, 1
  %i.eo = extractvalue { i64, double } %i.el, 0
  %i.ep = extractvalue { i64, double } %i.em, 0
  %i.eq = extractvalue { i64, double } %i.em, 1
  %i.er = trunc nuw i64 %i.eo to i1
  %i.es = trunc nuw i64 %i.ep to i1               ; 2 uses
  %i.et = fcmp ult double %i.en, %i.eq
  %spec.select.i.i.i17.i.i = select i1 %i.es, i1 %i.et, i1 false
  %.sroa.0.0.i.i.i.i18.i.i = select i1 %i.er, i1 %spec.select.i.i.i17.i.i, i1 %i.es
  %i.eu = xor i1 %.sroa.0.0.i.i.i.i18.i.i, true
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ej ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !alias.scope !424, !noalias !432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false), !alias.scope !424, !noalias !432
  %i.ew = zext i1 %i.eu to i64
  %i.ex = add i64 %i.ej, %i.ew                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.022.043.i.i59, i64 48 ; 3 uses
  %i.ey = icmp ult ptr %.sroa.13.0.i.i66, %i.dh
  br i1 %i.ey, label %.lr.ph.i.i57, label %.preheader.i.i42.preheader

.loopexit.i.i50:                                  ; preds = %.noexc.i.i54, %.preheader.i.i42
  %lpad.loopexit.i.i51 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i.i61:                         ; preds = %.noexc19.i.i65, %bb.o, %.noexc14.i.i64, %.lr.ph.i.i57
  %.sroa.022.2.ph.i.i62 = phi ptr [ %.sroa.022.043.i.i59, %.lr.ph.i.i57 ], [ %.sroa.022.043.i.i59, %.noexc14.i.i64 ], [ %.sroa.13.044.i.i58, %bb.o ], [ %.sroa.13.044.i.i58, %.noexc19.i.i65 ]
  %lpad.loopexit.split-lp.i.i63 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i61, %.loopexit.i.i50
  %.sroa.022.2.i.i52 = phi ptr [ %.sroa.022.1.i.i48, %.loopexit.i.i50 ], [ %.sroa.022.2.ph.i.i62, %.loopexit.split-lp.i.i61 ]
  %lpad.phi.i.i53 = phi { ptr, i32 } [ %lpad.loopexit.i.i51, %.loopexit.i.i50 ], [ %lpad.loopexit.split-lp.i.i63, %.loopexit.split-lp.i.i61 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.022.2.i.i52, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !425
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2W_14BenchmarkGroup3news_0E0E0EB2Y_.exit.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  %.not7.i56 = icmp ult i64 %i.dw, %.sroa.15.095168
  br i1 %.not7.i56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2W_14BenchmarkGroup3news_0E0E0EB2Y_.exit.i
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2W_14BenchmarkGroup3news_0E0E0EB2Y_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE14swap_uncheckedCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.096167, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.095168, i64 noundef 0, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.ez = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.fa = sub nuw i64 %.sroa.15.095168, %i.ez
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.096167, i64 %i.ez
  br label %.backedge

.backedge:                                        ; preds = %bb.r, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE12split_at_mutCs7NzLGBMhIGf_9criterion.exit
  %.sroa.023.0.be = phi ptr [ %i.co, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE12split_at_mutCs7NzLGBMhIGf_9criterion.exit ], [ null, %bb.r ]
  %.sroa.15.0.be = phi i64 [ %i.cr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE12split_at_mutCs7NzLGBMhIGf_9criterion.exit ], [ %i.fa, %bb.r ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cp, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE12split_at_mutCs7NzLGBMhIGf_9criterion.exit ], [ %i.fb, %bb.r ] ; 3 uses
  %i.fc = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fc, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtBa_6option6OptionReENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %._crit_edge167, label %.lr.ph166

bb.b:                                             ; preds = %.backedge
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %._crit_edge167, label %.lr.ph166

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalINtNtBa_6option6OptionReENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull %4)
  br label %bb.l

._crit_edge167:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.0105.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.0104.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.0105.lcssa, i64 noundef %.sroa.15.0104.lcssa, ptr noalias noundef nonnull %4)
  br label %bb.l

.lr.ph166:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.0102165 = phi i32 [ %i.h, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.0103164 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.0104163 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 15 uses
  %.sroa.0.0105162 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 30 uses
  %i.h = add i32 %.sroa.026.0102165, -1           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.i = lshr i64 %.sroa.15.0104163, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.i, 6
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 112
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 %.idx2.i ; 7 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0104163, 64
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph166
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionReENvYB14_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion(ptr noundef nonnull readonly align 8 %.sroa.0.0105162, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k, i64 noundef %i.i, ptr noalias noundef nonnull %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit

bb.d:                                             ; preds = %.lr.ph166
  %.val10.i = load ptr, ptr %.sroa.0.0105162, align 8, !alias.scope !435, !noalias !438, !noundef !14 ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0105162, i64 8
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !435, !noalias !438 ; 4 uses
  %.val12.i = load ptr, ptr %i.j, align 8, !alias.scope !435, !noalias !438 ; 5 uses
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %.val13.i = load i64, ptr %i.o, align 8, !alias.scope !435, !noalias !438 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val10.i, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not2.i.i.i.i = icmp eq ptr %.val12.i, null
  br i1 %.not2.i.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.p = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !440, !noalias !447 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0 ; 2 uses
  %.val829.i = load ptr, ptr %i.k, align 8, !alias.scope !435, !noalias !438 ; 2 uses
  %.not2.i.i.i15.i = icmp eq ptr %.val829.i, null
  br i1 %.not2.i.i.i15.i, label %._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %.val82941.i = load ptr, ptr %i.k, align 8, !alias.scope !435, !noalias !438 ; 2 uses
  %.not2.i.i.i1543.i = icmp eq ptr %.val82941.i, null
  br i1 %.not2.i.i.i1543.i, label %.thread51.i, label %bb.h

._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i: ; preds = %bb.f
  br i1 %i.t, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit, label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i

bb.g:                                             ; preds = %bb.d
  %.not1.i.i.i.i = icmp ne ptr %.val12.i, null
  %.val8.i = load ptr, ptr %i.k, align 8, !alias.scope !435, !noalias !438 ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 8
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !435, !noalias !438
  %.not1.i.i.i19.i = icmp ne ptr %.val8.i, null
  br label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20.i

bb.h:                                             ; preds = %.thread.i, %bb.f
  %.val82946.i = phi ptr [ %.val82941.i, %.thread.i ], [ %.val829.i, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i.i.ph44.i = phi i1 [ false, %.thread.i ], [ %i.t, %bb.f ]
  %.val93047.in.i = getelementptr i8, ptr %i.k, i64 8
  %.val93047.i = load i64, ptr %.val93047.in.i, align 8, !alias.scope !435, !noalias !438 ; 3 uses
  %spec.store.select.i.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val93047.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val82946.i, i64 %spec.store.select.i.i.i.i.i.i16.i), !alias.scope !448, !noalias !447 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.val11.i, %.val93047.i
  %spec.select.i.i.i.i.i.i17.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = icmp slt i64 %spec.select.i.i.i.i.i.i17.i, 0
  br label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20.i

_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20.i: ; preds = %bb.h, %bb.g
  %.val936.i = phi i64 [ %.val93047.i, %bb.h ], [ %.val9.i, %bb.g ] ; 2 uses
  %.val834.i = phi ptr [ %.val82946.i, %bb.h ], [ %.val8.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i31.i = phi i1 [ %.sroa.0.0.i.i.i.ph44.i, %bb.h ], [ %.not1.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.0.0.i.i.i18.i = phi i1 [ %i.z, %bb.h ], [ %.not1.i.i.i19.i, %bb.g ]
  %i.aa = xor i1 %.sroa.0.0.i.i.i31.i, %.sroa.0.0.i.i.i18.i
  br i1 %i.aa, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20.i
  %.not.i.i.i21.i = icmp eq ptr %.val12.i, null
  br i1 %.not.i.i.i21.i, label %.thread51.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not2.i.i.i22.i = icmp eq ptr %.val834.i, null
  br i1 %.not2.i.i.i22.i, label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i, label %bb.k

.thread51.i:                                      ; preds = %bb.i, %.thread.i
  %.val8343858.i = phi ptr [ %.val834.i, %bb.i ], [ null, %.thread.i ]
  %.sroa.0.0.i.i.i313957.i = phi i1 [ %.sroa.0.0.i.i.i31.i, %bb.i ], [ false, %.thread.i ]
  %.not1.i.i.i26.i = icmp ne ptr %.val8343858.i, null
  br label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i

bb.k:                                             ; preds = %bb.j
  %spec.store.select.i.i.i.i.i.i23.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val936.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val834.i, i64 %spec.store.select.i.i.i.i.i.i23.i), !alias.scope !455, !noalias !447 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val13.i, %.val936.i
  %spec.select.i.i.i.i.i.i24.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i.i24.i, 0
  br label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i

_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i: ; preds = %bb.k, %.thread51.i, %bb.j, %._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i
  %.sroa.0.0.i.i.i313956.i = phi i1 [ %.sroa.0.0.i.i.i31.i, %bb.k ], [ %.sroa.0.0.i.i.i313957.i, %.thread51.i ], [ %.sroa.0.0.i.i.i31.i, %bb.j ], [ false, %._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i ]
  %.sroa.0.0.i.i.i25.i = phi i1 [ %i.af, %bb.k ], [ %.not1.i.i.i26.i, %.thread51.i ], [ false, %bb.j ], [ false, %._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i ]
  %i.ag = xor i1 %.sroa.0.0.i.i.i313956.i, %.sroa.0.0.i.i.i25.i
  %..i.i = select i1 %i.ag, ptr %i.k, ptr %i.j
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.c, %._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20.i, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.0105162, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20.i ], [ %..i.i, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit27.i ], [ %.sroa.0.0105162, %._RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit20_crit_edge.i ]
  %i.ah = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ai = ptrtoint ptr %.sroa.0.0105162 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aj, 4          ; 3 uses
  %i.ak = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0104163
  tail call void @llvm.assume(i1 %i.ak)
  %.not = icmp eq ptr %.sroa.023.0103164, null
  br i1 %.not, label %bb.m, label %bb.t

bb.l:                                             ; preds = %._crit_edge167, %._crit_edge
  ret void

bb.m:                                             ; preds = %.split, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE14swap_uncheckedCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.0105162, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0104163, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 16 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !470
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !471, !noalias !468, !noundef !14
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !471, !noalias !468
  store ptr %i.am, ptr %i.b, align 8, !noalias !470
  store i64 %i.ao, ptr %i.e, align 8, !noalias !470
  %i.ap = getelementptr [16 x i8], ptr %.sroa.0.0105162, i64 %.sroa.15.0104163 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16    ; 3 uses
  %.sroa.13.051.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 32 ; 6 uses
  %i.ar = icmp ult ptr %.sroa.13.051.i.i, %i.aq
  %.val2.i.pre.i.i = load ptr, ptr %.sroa.0.0105162, align 8, !alias.scope !472, !noalias !465
  %.pre.i.i = freeze ptr %.val2.i.pre.i.i         ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 8
  %.val3.i14.i.i = load i64, ptr %i.as, align 8, !alias.scope !472, !noalias !465 ; 6 uses
  br i1 %i.ar, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %.not2.i.i.i.i16.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not2.i.i.i.i16.i.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader, label %.lr.ph.split.split.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader: ; preds = %.lr.ph.i.i
  %5 = and i64 %.sroa.15.0104163, 2
  %lcmp.mod.not.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod.not.not, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol, label %.lr.ph.i.i.a

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol: ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.i.i, i64 16, i1 false), !alias.scope !471, !noalias !473
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 48 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !471, !noalias !476
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !alias.scope !471, !noalias !476
  %.sroa.13.0.us.i.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 64 ; 2 uses
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader
  %.sroa.13.054.us.i.i.unr = phi ptr [ %.sroa.13.051.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader ], [ %.sroa.13.0.us.i.i.prol, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol ]
  %.sroa.033.053.us.i.i.unr = phi ptr [ %i.al, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader ], [ %6, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol ]
  %.lcssa179.unr = phi ptr [ poison, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader ], [ %6, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol ]
  %.sroa.13.0.us.i.i.lcssa.unr = phi ptr [ poison, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.preheader ], [ %.sroa.13.0.us.i.i.prol, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i.prol ]
  %7 = and i64 %.sroa.15.0104163, 1152921504606846974
  %.not2.i.i.i.i16.i.i.a = icmp eq i64 %7, 4
  br i1 %.not2.i.i.i.i16.i.i.a, label %.preheader.split.us.preheader.i.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i: ; preds = %.lr.ph.i.i.a, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i
  %.sroa.13.054.us.i.i = phi ptr [ %.sroa.13.0.us.i.i.a, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ], [ %.sroa.13.054.us.i.i.unr, %.lr.ph.i.i.a ] ; 2 uses
  %.sroa.033.053.us.i.i = phi ptr [ %i.at, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ], [ %.sroa.033.053.us.i.i.unr, %.lr.ph.i.i.a ] ; 5 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.053.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !471, !noalias !473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.054.us.i.i, i64 16, i1 false), !alias.scope !471, !noalias !473
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.033.053.us.i.i, i64 32 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.054.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !471, !noalias !476
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !alias.scope !471, !noalias !476
  %.sroa.13.0.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.053.us.i.i, i64 48 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !471, !noalias !473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0.us.i.i, i64 16, i1 false), !alias.scope !471, !noalias !473
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.033.053.us.i.i, i64 64 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !471, !noalias !476
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !471, !noalias !476
  %.sroa.13.0.us.i.i.a = getelementptr inbounds nuw i8, ptr %.sroa.033.053.us.i.i, i64 80 ; 3 uses
  %i.au = icmp ult ptr %.sroa.13.0.us.i.i.a, %i.aq
  br i1 %i.au, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i, label %.preheader.split.us.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i, %bb.m
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %i.bs, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i ] ; 2 uses
  %.sroa.033.0.lcssa.i.i = phi ptr [ %i.al, %bb.m ], [ %i.bl, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.051.i.i, %bb.m ], [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i ] ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not2.i.i.i.i.i.i, label %.preheader.split.us.preheader.i.i, label %.preheader.split.i.i

.preheader.split.us.preheader.i.i:                ; preds = %.lr.ph.i.i.a, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i, %.preheader.i.i
  %.sroa.13.0.lcssa100.i.i = phi ptr [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.0.us.i.i.lcssa.unr, %.lr.ph.i.i.a ], [ %.sroa.13.0.us.i.i.a, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ]
  %.sroa.033.0.lcssa99.i.i = phi ptr [ %.sroa.033.0.lcssa.i.i, %.preheader.i.i ], [ %.lcssa179.unr, %.lr.ph.i.i.a ], [ %i.at, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ]
  %.sroa.23.0.lcssa98.i.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ 0, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ], [ 0, %.lr.ph.i.i.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.23.0.lcssa98.i.i ; 2 uses
  br label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.split.us.i.i, %.preheader.split.us.preheader.i.i
  %.sroa.13.1.us.i.i = phi ptr [ %.sroa.13.1.sroa.gep44.us.i.i, %.preheader.split.us.i.i ], [ %.sroa.13.0.lcssa100.i.i, %.preheader.split.us.preheader.i.i ] ; 4 uses
  %.sroa.033.1.us.i.i = phi ptr [ %.sroa.13.1.us.i.i, %.preheader.split.us.i.i ], [ %.sroa.033.0.lcssa99.i.i, %.preheader.split.us.preheader.i.i ]
  %i.aw = icmp eq ptr %.sroa.13.1.us.i.i, %i.ap   ; 2 uses
  %.sroa.01.0.us.i.i = select i1 %i.aw, ptr %i.b, ptr %.sroa.13.1.us.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !471, !noalias !479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us.i.i, i64 16, i1 false), !noalias !479
  %.sroa.13.1.sroa.gep44.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us.i.i, i64 16
  br i1 %i.aw, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit.i, label %.preheader.split.us.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %bb.o
  %.sroa.23.1.i.i = phi i64 [ %i.bd, %bb.o ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep44.i.i, %bb.o ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.033.1.i.i = phi ptr [ %.sroa.13.1.i.i, %bb.o ], [ %.sroa.033.0.lcssa.i.i, %.preheader.i.i ]
  %i.ax = icmp eq ptr %.sroa.13.1.i.i, %i.ap      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ax, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.i.i, align 8, !noalias !479, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader.split.i.i
  %.sroa.13.1.sroa.gep.i.i = getelementptr i8, ptr %.sroa.13.1.i.i, i64 8
  %.sroa.01.0.sroa.sel.i.i = select i1 %i.ax, ptr %i.e, ptr %.sroa.13.1.sroa.gep.i.i
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel.i.i, align 8, !noalias !479 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i14.i.i)
  %i.ay = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !alias.scope !482, !noalias !489 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %.val1.i.i.i, %.val3.i14.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %spec.select.i.i.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i.i, 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader.split.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.lobit.i.i, %bb.n ], [ 1, %.preheader.split.i.i ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !471, !noalias !479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !479
  %i.bd = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.23.1.i.i ; 2 uses
  %.sroa.13.1.sroa.gep44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.ax, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit.i, label %.preheader.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i
  %.sroa.13.054.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i ], [ %.sroa.13.051.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.033.053.i.i = phi ptr [ %i.bl, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i ], [ %i.al, %.lr.ph.i.i ] ; 5 uses
  %.sroa.23.052.i.i = phi i64 [ %i.bs, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.054.i.i, align 8, !alias.scope !471, !noalias !473, !noundef !14 ; 2 uses
  %.not.i.i.i.i15.i.i = icmp eq ptr %.val.i11.i.i, null
  br i1 %.not.i.i.i.i15.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.i.i
  %i.be = getelementptr i8, ptr %.sroa.033.053.i.i, i64 24
  %.val1.i12.i.i = load i64, ptr %i.be, align 8, !alias.scope !471, !noalias !473 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i17.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i12.i.i, i64 %.val3.i14.i.i)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %.val.i11.i.i, ptr nonnull readonly %.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i.i17.i.i), !alias.scope !490, !noalias !497 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub i64 %.val1.i12.i.i, %.val3.i14.i.i
  %spec.select.i.i.i.i.i.i.i18.i.i = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %spec.select.i.i.i.i.i.i.i18.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i18.i.i, 63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.split.i.i
  %.sroa.0.0.i.i.i.i19.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i18.lobit.i.i, %bb.p ], [ 1, %.lr.ph.split.split.i.i ]
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.23.052.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.053.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !471, !noalias !473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.054.i.i, i64 16, i1 false), !alias.scope !471, !noalias !473
  %i.bk = add i64 %.sroa.0.0.i.i.i.i19.i.i, %.sroa.23.052.i.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.033.053.i.i, i64 32 ; 4 uses
  %.val.i22.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !471, !noalias !476, !noundef !14 ; 2 uses
  %.not.i.i.i.i26.i.i = icmp eq ptr %.val.i22.i.i, null
  br i1 %.not.i.i.i.i26.i.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %.sroa.033.053.i.i, i64 40
  %.val1.i23.i.i = load i64, ptr %i.bm, align 8, !alias.scope !471, !noalias !476 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i28.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i23.i.i, i64 %.val3.i14.i.i)
  %i.bn = tail call i32 @memcmp(ptr nonnull readonly %.val.i22.i.i, ptr nonnull readonly %.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i.i28.i.i), !alias.scope !498, !noalias !505 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %.val1.i23.i.i, %.val3.i14.i.i
  %spec.select.i.i.i.i.i.i.i29.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo
  %spec.select.i.i.i.i.i.i.i29.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i29.i.i, 63
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7NzLGBMhIGf_9criterion.exit32.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i30.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i29.lobit.i.i, %bb.r ], [ 1, %bb.q ]
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.bk ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.054.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !alias.scope !471, !noalias !476
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !alias.scope !471, !noalias !476
  %i.bs = add i64 %.sroa.0.0.i.i.i.i30.i.i, %i.bk ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.053.i.i, i64 48 ; 3 uses
  %i.bt = icmp ult ptr %.sroa.13.0.i.i, %i.aq
  br i1 %i.bt, label %.lr.ph.split.split.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.o, %.preheader.split.us.i.i
  %.us-phi78.i.i = phi i64 [ %.sroa.23.0.lcssa98.i.i, %.preheader.split.us.i.i ], [ %i.bd, %bb.o ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !470
  %.not7.i = icmp ult i64 %.us-phi78.i.i, %.sroa.15.0104163
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE12split_at_mutCs7NzLGBMhIGf_9criterion.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE12split_at_mutCs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE14swap_uncheckedCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.0105162, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0104163, i64 noundef 0, i64 noundef %.us-phi78.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0105162, i64 %.us-phi78.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = xor i64 %.us-phi78.i.i, -1
  %i.bx = add i64 %.sroa.15.0104163, %i.bw
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtBa_6option6OptionReENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.0105162, i64 noundef %.us-phi78.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.0103164, i32 noundef %i.h, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionReENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7NzLGBMhIGf_9criterion.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 %i.aj ; 2 uses
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.0103164, align 8, !noundef !14 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.023.0103164, i64 8
  %.sroa.023.0.val34 = load i64, ptr %i.bz, align 8 ; 2 uses
  %.val = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 8
  %.val35 = load i64, ptr %i.ca, align 8          ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.023.0.val, null
  %.not1.i.i.i.not = icmp eq ptr %.val, null      ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not1.i.i.i.not, label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread, label %.split

.split:                                           ; preds = %bb.u
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35)
  %i.cb = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !506 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp eq i32 %i.cb, 0
  %i.ce = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i.i.i.i.i = select i1 %i.cd, i64 %i.ce, i64 %i.cc
  %i.cf = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.cf, label %bb.m, label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread

_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.t
  br i1 %.not1.i.i.i.not, label %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread, label %bb.m

_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread: ; preds = %bb.u, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit, %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionReE14swap_uncheckedCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 %.sroa.0.0105162, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0104163, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !521
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !522, !noalias !519, !noundef !14
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !522, !noalias !519
  store ptr %i.ch, ptr %i.a, align 8, !noalias !521
  store i64 %i.cj, ptr %i.d, align 8, !noalias !521
  %i.ck = getelementptr [16 x i8], ptr %.sroa.0.0105162, i64 %.sroa.15.0104163 ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16    ; 3 uses
  %.sroa.13.051.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 32 ; 4 uses
  %i.cm = icmp ult ptr %.sroa.13.051.i.i43, %i.cl
  %.val2.i.pre.i.i44 = load ptr, ptr %.sroa.0.0105162, align 8, !alias.scope !523, !noalias !516 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0105162, i64 8
  %.val3.i14.i.i45 = load i64, ptr %i.cn, align 8, !alias.scope !523, !noalias !516 ; 6 uses
  br i1 %i.cm, label %.lr.ph.i.i67, label %.preheader.i.i46

.lr.ph.i.i67:                                     ; preds = %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread
  %.not.i.i.i.i.i15.i.i = icmp eq ptr %.val2.i.pre.i.i44, null
  br i1 %.not.i.i.i.i.i15.i.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i, label %.lr.ph.split.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i: ; preds = %.lr.ph.i.i67, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i
  %.sroa.13.054.us.i.i76 = phi ptr [ %.sroa.13.0.us.i.i78, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ], [ %.sroa.13.051.i.i43, %.lr.ph.i.i67 ] ; 3 uses
  %.sroa.033.053.us.i.i77 = phi ptr [ %i.cr, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ], [ %i.cg, %.lr.ph.i.i67 ] ; 3 uses
  %.sroa.23.052.us.i.i = phi i64 [ %i.cu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ], [ 0, %.lr.ph.i.i67 ] ; 2 uses
  %.val.i11.us.i.i = load ptr, ptr %.sroa.13.054.us.i.i76, align 8, !alias.scope !522, !noalias !524
  %.not1.i.i.i.i.i20.us.not.i.i = icmp eq ptr %.val.i11.us.i.i, null
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.23.052.us.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.053.us.i.i77, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !522, !noalias !524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.054.us.i.i76, i64 16, i1 false), !alias.scope !522, !noalias !524
  %i.cp = zext i1 %.not1.i.i.i.i.i20.us.not.i.i to i64
  %i.cq = add i64 %.sroa.23.052.us.i.i, %i.cp     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.053.us.i.i77, i64 32 ; 4 uses
  %.val.i22.us.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !522, !noalias !527
  %.not1.i.i.i.i.i31.us.not.i.i = icmp eq ptr %.val.i22.us.i.i, null
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cq ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.054.us.i.i76, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !522, !noalias !527
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !alias.scope !522, !noalias !527
  %i.ct = zext i1 %.not1.i.i.i.i.i31.us.not.i.i to i64
  %i.cu = add i64 %i.cq, %i.ct                    ; 2 uses
  %.sroa.13.0.us.i.i78 = getelementptr inbounds nuw i8, ptr %.sroa.033.053.us.i.i77, i64 48 ; 3 uses
  %i.cv = icmp ult ptr %.sroa.13.0.us.i.i78, %i.cl
  br i1 %i.cv, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i, label %.preheader.split.us.i.i62.preheader

.preheader.i.i46:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.i.i, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread
  %.sroa.23.0.lcssa.i.i47 = phi i64 [ 0, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread ], [ %i.eb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.i.i ] ; 2 uses
  %.sroa.033.0.lcssa.i.i48 = phi ptr [ %i.cg, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread ], [ %i.ds, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i49 = phi ptr [ %.sroa.13.051.i.i43, %_RNvYNvYINtNtCs4NRVxsYgnAr_4core6option6OptionReENtNtBa_3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRB5_B1E_EE8call_mutCs7NzLGBMhIGf_9criterion.exit.thread ], [ %.sroa.13.0.i.i75, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.pre.i.i44, null
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.split.us.i.i62.preheader, label %.preheader.split.i.i50

.preheader.split.us.i.i62.preheader:              ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i, %.preheader.i.i46
  %.sroa.23.1.us.i.i.ph = phi i64 [ %.sroa.23.0.lcssa.i.i47, %.preheader.i.i46 ], [ %i.cu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ]
  %.sroa.13.1.us.i.i63.ph = phi ptr [ %.sroa.13.0.lcssa.i.i49, %.preheader.i.i46 ], [ %.sroa.13.0.us.i.i78, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ]
  %.sroa.033.1.us.i.i64.ph = phi ptr [ %.sroa.033.0.lcssa.i.i48, %.preheader.i.i46 ], [ %i.cr, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBc_6option6OptionReENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7NzLGBMhIGf_9criterion.exit32.us.i.i ]
  br label %.preheader.split.us.i.i62

.preheader.split.us.i.i62:                        ; preds = %.preheader.split.us.i.i62.preheader, %.preheader.split.us.i.i62
  %.sroa.23.1.us.i.i = phi i64 [ %i.cz, %.preheader.split.us.i.i62 ], [ %.sroa.23.1.us.i.i.ph, %.preheader.split.us.i.i62.preheader ] ; 2 uses
  %.sroa.13.1.us.i.i63 = phi ptr [ %.sroa.13.1.sroa.gep44.us.i.i66, %.preheader.split.us.i.i62 ], [ %.sroa.13.1.us.i.i63.ph, %.preheader.split.us.i.i62.preheader ] ; 4 uses
  %.sroa.033.1.us.i.i64 = phi ptr [ %.sroa.13.1.us.i.i63, %.preheader.split.us.i.i62 ], [ %.sroa.033.1.us.i.i64.ph, %.preheader.split.us.i.i62.preheader ]
  %i.cw = icmp eq ptr %.sroa.13.1.us.i.i63, %i.ck ; 2 uses
  %.sroa.01.0.us.i.i65 = select i1 %i.cw, ptr %i.a, ptr %.sroa.13.1.us.i.i63 ; 2 uses
  %.val.i.us.i.i = load ptr, ptr %.sroa.01.0.us.i.i65, align 8, !noalias !530
  %.not1.i.i.i.i.i.us.not.i.i = icmp eq ptr %.val.i.us.i.i, null
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.23.1.us.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.us.i.i64, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !alias.scope !522, !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us.i.i65, i64 16, i1 false), !noalias !530
  %i.cy = zext i1 %.not1.i.i.i.i.i.us.not.i.i to i64
  %i.cz = add i64 %.sroa.23.1.us.i.i, %i.cy       ; 2 uses
  %.sroa.13.1.sroa.gep44.us.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us.i.i63, i64 16
  br i1 %i.cw, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtBa_6option6OptionReENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7NzLGBMhIGf_9criterion.exit.i, label %.preheader.split.us.i.i62

.preheader.split.i.i50:                           ; preds = %.preheader.i.i46, %bb.w
  %.sroa.23.1.i.i51 = phi i64 [ %i.di, %bb.w ], [ %.sroa.23.0.lcssa.i.i47, %.preheader.i.i46 ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep44.i.i59, %bb.w ], [ %.sroa.13.0.lcssa.i.i49, %.preheader.i.i46 ] ; 5 uses
  %.sroa.033.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %bb.w ], [ %.sroa.033.0.lcssa.i.i48, %.preheader.i.i46 ]
  %i.da = icmp eq ptr %.sroa.13.1.i.i52, %i.ck    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.da, ptr %i.a, ptr %.sroa.13.1.i.i52 ; 2 uses
  %.val.i.i.i55 = load ptr, ptr %.sroa.01.0.i.i54, align 8, !noalias !530 ; 2 uses
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i55, null
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.split.i.i50
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr i8, ptr %.sroa.13.1.i.i52, i64 8
  %.sroa.01.0.sroa.sel.i.i57 = select i1 %i.da, ptr %i.d, ptr %.sroa.13.1.sroa.gep.i.i56
  %.val1.i.i.i58 = load i64, ptr %.sroa.01.0.sroa.sel.i.i57, align 8, !noalias !530 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i45, i64 %.val1.i.i.i58)
  %i.db = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i.i.i55, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i), !alias.scope !533, !noalias !540 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 0
  %i.de = sub i64 %.val3.i14.i.i45, %.val1.i.i.i58
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.dd, i64 %i.de, i64 %i.dc
  %i.df = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -1
  %i.dg = zext i1 %i.df to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.split.i.i50
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.dg, %bb.v ], [ 1, %.preheader.split.i.i50 ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.23.1.i.i51 ; 2 uses
end_hunk_0
