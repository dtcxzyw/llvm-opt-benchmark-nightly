Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift:bb.a
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !44336 ; 2 uses

.noexc65:                                         ; preds = %.lr.ph.split
  store ptr %i.bw, ptr %i.b, align 8, !noalias !44378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44378
  store i32 2, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !noalias !44378
  %i.bx = invoke fastcc noundef i128 @_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #59
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %.noexc65
  %i.by = load ptr, ptr %i.be, align 8, !invariant.load !41, !noalias !44378, !nonnull !41
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, i128 noundef %i.bx) #59
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !44336 ; 0 uses

.noexc67:                                         ; preds = %.noexc66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44378
  %i.ca = invoke { ptr, i64 } @_RNvMs3_NtCsdaEETE4DqmE_13typst_library4textNtB5_10FontFamily6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bu)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc69:                                         ; preds = %.noexc67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = extractvalue { ptr, i64 } %i.ca, 0
  %i.cd = extractvalue { ptr, i64 } %i.ca, 1
  %i.ce = invoke { i64, i64 } @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library4text4font4bookNtB2_8FontBook6select(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.cd, i48 %i.al)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc70:                                         ; preds = %.noexc69
  %i.cf = extractvalue { i64, i64 } %i.ce, 0
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.m, label %.noexc

bb.m:                                             ; preds = %.noexc70
  %i.ch = extractvalue { i64, i64 } %i.ce, 1
  %i.ci = invoke fastcc noundef ptr @_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4font(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.ch) #59
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc71:                                         ; preds = %bb.m
  %.not.i.i64 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i64, label %.noexc, label %.split.us.invoke

.split.us.invoke:                                 ; preds = %.noexc71, %.noexc71.us, %.noexc56, %.noexc56.us
  %i.cj = phi ptr [ %i.bs, %.noexc71.us ], [ %i.ec, %.noexc56 ], [ %i.dm, %.noexc56.us ], [ %i.ci, %.noexc71 ]
  %i.ck = invoke noundef nonnull ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library4text4fontNtB2_4Font11instantiate(ptr noundef nonnull %i.cj, i48 %i.al, double noundef %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %.noexc71, %.noexc70
  %i.cl = icmp eq ptr %i.bv, %i.av
  br i1 %i.cl, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.noexc, %.noexc.us, %bb.k, %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !44374, !noundef !41 ; 4 uses
  %.not8.i = icmp eq ptr %i.cn, null
  br i1 %.not8.i, label %.loopexit110, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !44379)
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !44380, !nonnull !41, !noundef !41 ; 3 uses
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %.loopexit110, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cu = load ptr, ptr %0, align 8, !alias.scope !44381, !noalias !44382, !nonnull !41, !noundef !41 ; 2 uses
  %i.cv = load ptr, ptr %i.cr, align 8, !alias.scope !44381, !noalias !44382, !nonnull !41, !align !46, !noundef !41
  %i.cw = load ptr, ptr %i.cs, align 8, !alias.scope !44381, !noalias !44382, !noundef !41 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, null
  %i.cx = load ptr, ptr %i.ct, align 8, !nonnull !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !41, !noalias !44383, !nonnull !41 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i.us
  %i.db = phi ptr [ %i.dc, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i.us ], [ %i.cn, %.lr.ph.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44381), !noalias !44379
  %i.dd = invoke noundef nonnull align 16 ptr %i.da(ptr noundef nonnull %i.cu) #59
          to label %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4book.exit.i.i.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !44350

_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4book.exit.i.i.i.us: ; preds = %.lr.ph.i.split.us
  %i.de = invoke { ptr, i64 } @_RNvMs3_NtCsdaEETE4DqmE_13typst_library4textNtB5_10FontFamily6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.db)
          to label %.noexc54.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54.us:                                      ; preds = %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4book.exit.i.i.i.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = extractvalue { ptr, i64 } %i.de, 0
  %i.dh = extractvalue { ptr, i64 } %i.de, 1
  %i.di = invoke { i64, i64 } @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library4text4font4bookNtB2_8FontBook6select(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.dh, i48 %i.al)
          to label %.noexc55.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc55.us:                                      ; preds = %.noexc54.us
  %i.dj = extractvalue { i64, i64 } %i.di, 0
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.o, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i.us

bb.o:                                             ; preds = %.noexc55.us
  %i.dl = extractvalue { i64, i64 } %i.di, 1
  %i.dm = invoke fastcc noundef ptr @_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4font(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.dl) #59
          to label %.noexc56.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56.us:                                      ; preds = %bb.o
  %.not.i.i.i.us = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.us, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i.us, label %.split.us.invoke

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i.us: ; preds = %.noexc56.us, %.noexc55.us
  %i.dn = icmp eq ptr %i.dc, %i.cp
  br i1 %i.dn, label %.loopexit110, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i
  %i.do = phi ptr [ %i.dp, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i ], [ %i.cn, %.lr.ph.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44381), !noalias !44379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44383
  %i.dq = invoke noundef nonnull align 16 ptr %i.da(ptr noundef nonnull %i.cu) #59
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !44350 ; 2 uses

.noexc50:                                         ; preds = %.lr.ph.i.split
  store ptr %i.dq, ptr %i.e, align 8, !noalias !44383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44383
  store i32 2, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !noalias !44383
  %i.dr = invoke fastcc noundef i128 @_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #59
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %.noexc50
  %i.ds = load ptr, ptr %i.cy, align 8, !invariant.load !41, !noalias !44383, !nonnull !41
  %i.dt = invoke noundef zeroext i1 %i.ds(ptr noundef nonnull %i.cw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, i128 noundef %i.dr) #59
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !44350 ; 0 uses

.noexc52:                                         ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44383
  %i.du = invoke { ptr, i64 } @_RNvMs3_NtCsdaEETE4DqmE_13typst_library4textNtB5_10FontFamily6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.do)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54:                                         ; preds = %.noexc52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dw = extractvalue { ptr, i64 } %i.du, 0
  %i.dx = extractvalue { ptr, i64 } %i.du, 1
  %i.dy = invoke { i64, i64 } @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library4text4font4bookNtB2_8FontBook6select(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dx, i48 %i.al)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc55:                                         ; preds = %.noexc54
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.p, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i

bb.p:                                             ; preds = %.noexc55
  %i.eb = extractvalue { i64, i64 } %i.dy, 1
  %i.ec = invoke fastcc noundef ptr @_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4font(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.eb) #59
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %bb.p
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i, label %.split.us.invoke

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i: ; preds = %.noexc56, %.noexc55
  %i.ed = icmp eq ptr %i.dp, %i.cp
  br i1 %i.ed, label %.loopexit110, label %.lr.ph.i.split

.noexc.thread:                                    ; preds = %.split.us.invoke
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 33
  %i.ef = load i8, ptr %i.ee, align 1, !range !54, !noundef !41
  %i.eg = trunc nuw i8 %i.ef to i1                ; 3 uses
  %_RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift27DEFAULT_SUPERSCRIPT_METRICS._RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift25DEFAULT_SUBSCRIPT_METRICS = select i1 %i.eg, ptr @_RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift27DEFAULT_SUPERSCRIPT_METRICS, ptr @_RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift25DEFAULT_SUBSCRIPT_METRICS
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44384
  store ptr %i.ck, ptr %i.c, align 8, !noalias !44385
  %..i.i = select i1 %i.eg, i64 56, i64 16
  %.5.i.i = select i1 %i.eg, i64 64, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 %..i.i
  %i.ei = load i64, ptr %i.eh, align 8, !range !49, !noalias !44385, !noundef !41
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.5.i.i
  %spec.select2.i.i = select i1 %i.ej, ptr %i.ek, ptr %_RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift27DEFAULT_SUPERSCRIPT_METRICS._RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift25DEFAULT_SUBSCRIPT_METRICS
  %.sroa.4.0.spec.select2.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select2.i.i, i64 16
  %i.el = load <2 x double>, ptr %.sroa.4.0.spec.select2.i.i.sroa_idx, align 8, !noalias !44386
  %i.em = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !44387
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.q, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0B7_.exit.i

bb.q:                                             ; preds = %.noexc.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #58
          to label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0B7_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0B7_.exit.i: ; preds = %bb.q, %.noexc.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44384
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceE6map_orNtNtBK_7metrics13ScriptMetricsNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0EB2p_.exit

.loopexit110:                                     ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtB1j_4font12FontInstanceNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shift0E0B2E_.exit.i.us, %._crit_edge, %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 33
  %i.ep = load i8, ptr %i.eo, align 1, !range !54, !noundef !41
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift27DEFAULT_SUPERSCRIPT_METRICS, i64 16), align 8
  %i.es = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdaEETE4DqmE_13typst_library4text5shift25DEFAULT_SUBSCRIPT_METRICS, i64 16), align 8
  %i.et = select i1 %i.eq, <2 x double> %i.er, <2 x double> %i.es
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceE6map_orNtNtBK_7metrics13ScriptMetricsNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0EB2p_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceE6map_orNtNtBK_7metrics13ScriptMetricsNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0EB2p_.exit: ; preds = %.loopexit110, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0B7_.exit.i
  %i.eu = phi <2 x double> [ %i.et, %.loopexit110 ], [ %i.el, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0B7_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ev = load i64, ptr %.sroa.0.0.i, align 8, !range !49, !noundef !41
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = extractelement <2 x double> %i.eu, i64 1
  br i1 %i.ew, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceE6map_orNtNtBK_7metrics13ScriptMetricsNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0EB2p_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.ez = load double, ptr %i.ey, align 8
  br label %bb.s

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceE6map_orNtNtBK_7metrics13ScriptMetricsNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0EB2p_.exit, %bb.r
  %.sroa.033.0 = phi double [ %i.ez, %bb.r ], [ %i.ex, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceE6map_orNtNtBK_7metrics13ScriptMetricsNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line11apply_shifts_0EB2p_.exit ]
  %i.fa = fmul double %i.ap, %.sroa.033.0         ; 2 uses
  %i.fb = call double @llvm.fabs.f64(double %i.fa)
  %i.fc = fcmp one double %i.fb, +inf
  %.neg = fneg double %i.fa
  %i.fd = select i1 %i.fc, double %.neg, double -0.000000e+00 ; 2 uses
  %.inv = fcmp ord double %i.fd, 0.000000e+00
  %spec.store.select1 = select i1 %.inv, double %i.fd, double 0.000000e+00
  %i.fe = fadd double %i.x, %spec.store.select1   ; 2 uses
  %.inv41 = fcmp ord double %i.fe, 0.000000e+00
  %spec.store.select2 = select i1 %.inv41, double %i.fe, double 0.000000e+00
  %i.ff = extractelement <2 x double> %i.eu, i64 0
  %i.fg = fmul double %i.ap, %i.ff                ; 2 uses
  %i.fh = call double @llvm.fabs.f64(double %i.fg)
  %i.fi = fcmp one double %i.fh, +inf
  %i.fj = fadd double %i.fg, 0.000000e+00
  %i.fk = select i1 %i.fi, double %i.fj, double 0.000000e+00 ; 2 uses
  %.inv43 = fcmp ord double %i.fk, 0.000000e+00
  %spec.store.select4 = select i1 %.inv43, double %i.fk, double 0.000000e+00
  %i.fl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val44 = load i64, ptr %i.fl, align 8, !alias.scope !145, !noundef !41 ; 2 uses
  %i.fm = icmp ugt i64 %.val44, 2
  br i1 %i.fm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtB1d_10variations9AxisValueEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i61, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations14FontVariationsECs7tN9tvpkfrg_12typst_layout.exit62

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtB1d_10variations9AxisValueEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i61: ; preds = %bb.s
  %.val = load ptr, ptr %i.l, align 8, !nonnull !41, !noundef !41
  %i.fn = shl nuw i64 %.val44, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !44388
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations14FontVariationsECs7tN9tvpkfrg_12typst_layout.exit62

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations14FontVariationsECs7tN9tvpkfrg_12typst_layout.exit62: ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtB1d_10variations9AxisValueEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations14FontVariationsECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtB1d_10variations9AxisValueEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp207
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line4line(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %2, i64 noundef %3, i64 noundef %4, i24 %5, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(40) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [3 x i8], align 4                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [4 x i8], align 4                 ; 5 uses
  %i.x = alloca [4 x i8], align 4                 ; 6 uses
  %i.y = alloca [112 x i8], align 16              ; 4 uses
  %i.z = alloca [104 x i8], align 8               ; 5 uses
  %i.aa = alloca [112 x i8], align 16             ; 4 uses
  %i.ab = alloca [104 x i8], align 8              ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.0124.0.extract.trunc = trunc i24 %5 to i8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !41, !noundef !41 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !41 ; 7 uses
  %i.ai = icmp ugt i64 %3, %4
  %i.aj = icmp ugt i64 %4, %i.ah
  %or.cond.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread129, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp eq i64 %3, %i.ah                   ; 2 uses
  br i1 %i.ak, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = icmp eq i64 %3, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.am = icmp eq i64 %4, %i.ah
  br i1 %i.am, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %3
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !44623, !noundef !41
  %i.ap = icmp sgt i8 %i.ao, -65
  br i1 %i.ap, label %bb.d, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread129, !prof !121

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %4
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !44623, !noundef !41
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread129, !prof !62

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread129: ; preds = %bb.e, %bb.a, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #53
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread: ; preds = %bb.d, %bb.b, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  %i.at = sub nuw i64 %4, %3                      ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %3 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i32 11043042, ptr %i.x, align 4
  %.not.i = icmp samesign ult i64 %i.at, 3
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.f

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  %i.av = getelementptr i8, ptr %i.af, i64 %4
  %i.aw = getelementptr i8, ptr %i.av, i64 -3     ; 2 uses
  %i.ax = load i16, ptr %i.x, align 4
  %i.ay = load i16, ptr %i.aw, align 1
  %i.az = xor i16 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %i.x, i64 2
  %i.bb = getelementptr i8, ptr %i.aw, i64 2
  %i.bc = load i8, ptr %i.ba, align 2
  %i.bd = load i8, ptr %i.bb, align 1
  %i.be = zext i8 %i.bc to i16
  %i.bf = zext i8 %i.bd to i16
  %i.bg = xor i16 %i.be, %i.bf
  %i.bh = or i16 %i.az, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %i.bk, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit.thread, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !41, !align !46, !noundef !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  %i.bo = load i8, ptr %i.bn, align 8, !range !54, !noundef !41
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = icmp ne i8 %.sroa.0124.0.extract.trunc, 1
  %i.br = zext i1 %i.bq to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit, %bb.g
  %.sroa.03.0 = phi i8 [ 1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.br, %bb.g ], [ 0, %bb.f ]
  %i.bs = and i24 %5, 255
  %i.bt = icmp eq i24 %i.bs, 2
  br i1 %i.bt, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 44482, ptr %i.w, align 4
  %.not.i49 = icmp samesign ult i64 %i.at, 2
  br i1 %.not.i49, label %bb.j, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit52

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit52: ; preds = %bb.i
  %i.bu = getelementptr i8, ptr %i.af, i64 %4
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.w, align 4
  %i.bx = load i16, ptr %i.bv, align 1
  %i.by = icmp ne i16 %i.bw, %i.bx
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br i1 %i.ca, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit56

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not.i53 = icmp eq i64 %4, %3
  br i1 %.not.i53, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit56

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit56: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs7tN9tvpkfrg_12typst_layout.exit52, %bb.j
  %i.cb = getelementptr i8, ptr %i.af, i64 %4     ; 4 uses
end_hunk_0
