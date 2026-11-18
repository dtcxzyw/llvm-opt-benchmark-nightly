Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RNvMs4_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16readerNtB5_10FileReader17page_stats_schema:bb.a
  %.not107.i.i.5 = icmp eq i64 %.sroa.26.0.i.i, 6
  br i1 %.not107.i.i.5, label %.loopexit.i.i, label %.lr.ph152.i.i.6

.lr.ph152.i.i.6:                                  ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 6
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !34077, !noalias !34076, !noundef !76
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nsw i32 %i.dh, -48                  ; 2 uses
  %i.dj = icmp ult i32 %i.di, 10
  br i1 %i.dj, label %bb.v, label %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i

bb.v:                                             ; preds = %.lr.ph152.i.i.6
  %i.dk = mul i32 %i.de, 10
  %i.dl = add i32 %i.di, %i.dk
  br label %.loopexit.i.i

._crit_edge.loopexit.i:                           ; preds = %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !34076
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.dm = phi i64 [ %i.ey, %._crit_edge.loopexit.i ], [ 0, %bb.b ]
  %i.dn = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ inttoptr (i64 4 to ptr), %bb.b ]
  invoke void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema14project_by_ids(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dm, i1 noundef zeroext true)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34074

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.z, %._crit_edge.i
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  %.val12.i = load i64, ptr %i.a, align 8, !noalias !34076 ; 2 uses
  %i.do = icmp eq i64 %.val12.i, 0
  br i1 %i.do, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val13.i = load ptr, ptr %i.g, align 8, !noalias !34076, !nonnull !76, !noundef !76
  %i.dp = shl nuw i64 %.val12.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !34078
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsaSXGKSfiU2E_10lance_file.exit.i

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.i: ; preds = %.loopexit114.sink.split.i.i, %.loopexit.i.i
  %.sroa.12.0.insert.insert.i.i = phi i64 [ %i.aw, %.loopexit114.sink.split.i.i ], [ %i.ag, %.loopexit.i.i ] ; 2 uses
  %i.dq = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  br i1 %i.dq, label %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i, label %bb.x

bb.x:                                             ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.i
  %.sroa.510.0.extract.shift.i = lshr i64 %.sroa.12.0.insert.insert.i.i, 32
  %.sroa.510.0.extract.trunc.i = trunc nuw i64 %.sroa.510.0.extract.shift.i to i32 ; 2 uses
  br i1 %.not.i.i97, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i.preheader

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i.preheader: ; preds = %bb.x
  %i.dr = insertelement <16 x i32> poison, i32 %.sroa.510.0.extract.trunc.i, i64 0
  %i.ds = shufflevector <16 x i32> %i.dr, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.y:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i99, i64 64
  %i.du = add nsw i64 %.sroa.5.0.i.i98, -16       ; 2 uses
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i

.preheader.i.preheader:                           ; preds = %bb.y, %bb.x
  br i1 %.not.not.not.i.not.not.i.i100, label %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i = icmp eq ptr %i.dv, %i.r
  br i1 %.not.not.not.i.not.not.i.i, label %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.dw = phi ptr [ %i.dv, %.preheader.i ], [ %i.p, %.preheader.i.preheader ] ; 2 uses
  %.val3.i.i.i = load i32, ptr %i.dw, align 4, !alias.scope !34079, !noalias !34080, !noundef !76
  %i.dx = icmp eq i32 %.val3.i.i.i, %.sroa.510.0.extract.trunc.i
  br i1 %i.dx, label %.loopexit22.i, label %.preheader.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i.preheader, %bb.y
  %.sroa.0.05.i.i99 = phi ptr [ %i.dt, %bb.y ], [ %2, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i98 = phi i64 [ %i.du, %bb.y ], [ %i.o, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i.preheader ]
  %i.dy = load <16 x i32>, ptr %.sroa.0.05.i.i99, align 4, !alias.scope !34079, !noalias !34081
  %i.dz = icmp eq <16 x i32> %i.dy, %i.ds
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %.not101 = icmp eq i16 %i.ea, 0
  br i1 %.not101, label %bb.y, label %.loopexit22.i

.loopexit22.i:                                    ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsF_NtB9_3cmplNtB1L_13SliceContains14slice_contains0ECsaSXGKSfiU2E_10lance_file.exit.i.i, %.lr.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 176
  %i.ec = load i32, ptr %i.eb, align 8, !noalias !34076, !noundef !76
  %i.ed = load i64, ptr %i.a, align 8, !range !79, !alias.scope !34082, !noalias !34076, !noundef !76
  %i.ee = icmp eq i64 %i.s, %i.ed
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.loopexit22.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34076

bb.aa:                                            ; preds = %bb.z, %.loopexit22.i
  %i.ef = load ptr, ptr %i.g, align 8, !alias.scope !34082, !noalias !34076, !nonnull !76, !noundef !76
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.s
  store i32 %i.ec, ptr %i.eg, align 4, !noalias !34076
  %i.eh = add i64 %i.s, 1                         ; 3 uses
  store i64 %i.eh, ptr %i.h, align 8, !alias.scope !34082, !noalias !34076
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !34076, !nonnull !76, !noundef !76 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 104
  %i.el = load i64, ptr %i.ek, align 8, !noalias !34076, !noundef !76 ; 2 uses
  %.idx45.i = mul nuw nsw i64 %i.el, 192
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx45.i
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ac
  %i.eo = phi i64 [ %i.ev, %bb.ac ], [ %i.eh, %bb.aa ] ; 3 uses
  %.sroa.04.042.i = phi ptr [ %i.ew, %bb.ac ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.042.i, i64 176
  %i.eq = load i32, ptr %i.ep, align 8, !noalias !34076, !noundef !76
  %i.er = load i64, ptr %i.a, align 8, !range !79, !alias.scope !34083, !noalias !34076, !noundef !76
  %i.es = icmp eq i64 %i.eo, %i.er
  br i1 %i.es, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34076

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i
  %i.et = load ptr, ptr %i.g, align 8, !alias.scope !34083, !noalias !34076, !nonnull !76, !noundef !76
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eo
  store i32 %i.eq, ptr %i.eu, align 4, !noalias !34076
  %i.ev = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.ev, ptr %i.h, align 8, !alias.scope !34083, !noalias !34076
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.04.042.i, i64 192 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.em
  br i1 %i.ex, label %_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.i

_RNvXsF_NtNtCscI6d9CVNmLh_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i: ; preds = %bb.i, %bb.h, %.lr.ph143.i.i, %bb.n, %bb.m, %.lr.ph152.i.i, %.lr.ph152.i.i.1, %.lr.ph152.i.i.2, %.lr.ph152.i.i.3, %.lr.ph152.i.i.4, %.lr.ph152.i.i.5, %.lr.ph152.i.i.6, %.preheader.i, %bb.ac, %.preheader.i.preheader, %bb.aa, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.i, %bb.d, %bb.d, %bb.c
  %i.ey = phi i64 [ %i.ev, %bb.ac ], [ %i.s, %.preheader.i.preheader ], [ %i.s, %.preheader.i ], [ %i.s, %.lr.ph152.i.i ], [ %i.s, %bb.n ], [ %i.s, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.i ], [ %i.eh, %bb.aa ], [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %bb.d ], [ %i.s, %.lr.ph143.i.i ], [ %i.s, %.lr.ph152.i.i.6 ], [ %i.s, %.lr.ph152.i.i.5 ], [ %i.s, %.lr.ph152.i.i.4 ], [ %i.s, %.lr.ph152.i.i.3 ], [ %i.s, %.lr.ph152.i.i.2 ], [ %i.s, %.lr.ph152.i.i.1 ], [ %i.s, %bb.m ], [ %i.s, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %i.ez = icmp eq ptr %i.t, %i.m
  br i1 %i.ez, label %._crit_edge.loopexit.i, label %bb.c

bb.ad:                                            ; preds = %._crit_edge.i
  %.val.i = load i64, ptr %i.a, align 8, !noalias !34076 ; 2 uses
  %i.fa = icmp eq i64 %.val.i, 0
  br i1 %i.fa, label %_RNCNvMs4_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16readerNtB7_10FileReader17page_stats_schema0Bd_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val11.i = load ptr, ptr %i.g, align 8, !noalias !34076, !nonnull !76, !noundef !76
  %i.fb = shl nuw i64 %.val.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !34078
  br label %_RNCNvMs4_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16readerNtB7_10FileReader17page_stats_schema0Bd_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.w, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp113

_RNCNvMs4_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16readerNtB7_10FileReader17page_stats_schema0Bd_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.af:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_RNCNvMs4_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16readerNtB7_10FileReader17page_stats_schema0Bd_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_16ReaderProjection24prefers_indexed_metadata(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !34088 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34089)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !34089, !nonnull !76, !noundef !76 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noalias !34089, !noundef !76 ; 3 uses
  %i.e = icmp ult i64 %i.d, 48038396025285291
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !34089, !nonnull !76, !noundef !76 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 192
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.0.i.i12 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %i.h, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = tail call fastcc { i64, i64 } @_RNvNtCsaSXGKSfiU2E_10lance_file6reader31indexed_projection_column_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.l), !noalias !34090 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = extractvalue { i64, i64 } %i.m, 1
  %i.q = add i64 %i.p, %.sroa.01.0.i.i12          ; 4 uses
  %i.r = icmp uge i64 %i.q, %.sroa.01.0.i.i12
  %narrow.i.not.i.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread3

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread3: ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load i64, ptr %2, align 8, !alias.scope !34089, !noundef !76
  %4 = icmp ult i64 %3, 2305843009213693952
  tail call void @llvm.assume(i1 %4)
  br label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !34089, !noundef !76 ; 2 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.q, %i.t
  br i1 %i.v, label %bb.d, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread

bb.d:                                             ; preds = %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit
  %i.w = shl nuw nsw i64 %i.q, 2
  %i.x = icmp ult i64 %i.w, %1
  br label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread: ; preds = %bb.a, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread3, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit, %bb.d
  %.sroa.0.0 = phi i1 [ %i.x, %bb.d ], [ false, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit ], [ false, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread3 ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VechEEE5clearCsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality !guid !34101 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !76 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34102)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !34102, !nonnull !76, !noundef !76 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !34103
  %i.e = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = bitcast <16 x i1> %i.e to i16
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i, %bb.b
  %.sroa.05.016.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.05.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 2 uses
  %.sroa.6.015.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.6.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 2 uses
  %.sroa.86.014.i = phi i16 [ %i.g, %bb.b ], [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 2 uses
  %.sroa.107.013.i = phi i64 [ %i.b, %bb.b ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i ]
  %.not12.i.i = icmp eq i16 %.sroa.86.014.i, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.sroa.6.015.i, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %.sroa.05.016.i, %bb.c ]
  %.val10.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !34104
  %i.j = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.j to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1.i = phi ptr [ %.sroa.6.015.i, %bb.c ], [ %i.l, %.lr.ph.i.i ]
  %.sroa.05.1.i = phi ptr [ %.sroa.05.016.i, %bb.c ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.86.014.i, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i, i64 %i.q ; 4 uses
  %i.s = add i64 %.sroa.107.013.i, -1             ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34106)
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !34107, !noalias !34102 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -40
  %.val1.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !34107, !noalias !34102, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !34108
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.d, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -24
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !34105, !noalias !34102 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.val1.i.i = load ptr, ptr %i.y, align 8, !alias.scope !34105, !noalias !34102, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !34109
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.z = icmp eq i64 %i.s, 0
  br i1 %i.z, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.f:                                             ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECsaSXGKSfiU2E_10lance_file.exit5
  ret void

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !76 ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECsaSXGKSfiU2E_10lance_file.exit5, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit
  %i.ad = add i64 %i.ab, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.ad, i1 false)
  %i.ae = icmp ult i64 %i.ab, 8
  %i.af = add i64 %i.ab, 1
  %i.ag = lshr i64 %i.af, 3
  %i.ah = mul nuw i64 %i.ag, 7
  %spec.select.i.i.i4 = select i1 %i.ae, i64 %i.ab, i64 %i.ah
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECsaSXGKSfiU2E_10lance_file.exit5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECsaSXGKSfiU2E_10lance_file.exit5: ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit, %bb.g
  %i.ai = phi i64 [ %spec.select.i.i.i4, %bb.g ], [ 0, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit ]
  store i64 0, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader13decode_footer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !34171 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 14 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !76 ; 5 uses
  store i64 %i.k, ptr %i.h, align 8
  %i.l = icmp ult i64 %i.k, 40
  br i1 %i.l, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34172)
  %i.m = load ptr, ptr %1, align 8, !noalias !34172, !nonnull !76, !align !77, !noundef !76
  %i.n = load ptr, ptr %i.m, align 8, !noalias !34172, !nonnull !76, !noundef !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !34172, !noundef !76
  call void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.o, ptr noundef %i.q, i64 noundef %i.k), !inline_history !156
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !34172, !noundef !76
  %i.t = getelementptr i8, ptr %i.s, i64 %i.k     ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -40      ; 4 uses
  %.sroa.0103.0.copyload = load ptr, ptr %i.e, align 8 ; 6 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = load <2 x i64>, ptr %i.u, align 1, !noalias !76
  %i.w = getelementptr i8, ptr %i.t, i64 -24
  %.sroa.0.0.copyload.i67 = load i64, ptr %i.w, align 1, !alias.scope !34173, !noalias !34174
  %i.x = getelementptr i8, ptr %i.t, i64 -16
  %i.y = load <2 x i32>, ptr %i.x, align 1, !noalias !76
  %i.z = getelementptr i8, ptr %i.t, i64 -8
  %i.aa = load <2 x i16>, ptr %i.z, align 1, !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = add i64 %i.k, -4
  invoke fastcc void @_RINvMNtCs4XDKJNDGLq7_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFromjEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %1, i64 noundef %i.ab)
          to label %bb.g unwind label %bb.f

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.ac, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @703, ptr noundef nonnull %i.f), !noalias !34175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !34176)
  %.sroa.06.0.copyload.i = load i64, ptr %i.g, align 8, !alias.scope !34177 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !34177 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !34177
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !34178
  %i.ad = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !34178 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.c, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, !prof !75

bb.c:                                             ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i unwind label %bb.d, !noalias !34179

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.ag, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !34180
  br label %common.resume

common.resume:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit97, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.d ], [ %i.af, %bb.e ], [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit97 ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.split
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection11read_length:bb.a
bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.d, align 8, !range !99, !noalias !53409, !noundef !76 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aj, -1
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.416.0..sroa_idx.i.i, i64 7, i1 false), !noalias !53413
  %.sroa.517.0.copyload.i.i = load i64, ptr %i.z, align 8, !noalias !53409
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.622.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.618.0..sroa_idx.i.i, i64 40, i1 false), !noalias !53413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53409
  store i8 %i.aj, ptr %0, align 8, !alias.scope !53412
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.517.0.copyload.i.i, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !53412
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.z, align 8, !noalias !53409, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53409
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !noalias !53411, !nonnull !76, !noundef !76
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !noalias !53411, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53414)
  %i.ap = load i64, ptr %i.e, align 8, !range !79, !alias.scope !53414, !noalias !53409, !noundef !76
  %i.aq = icmp eq i64 %i.ab, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTReyEE8grow_oneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %._crit_edge19.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !53411

._crit_edge19.i.i:                                ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.w, align 8, !alias.scope !53414, !noalias !53409
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge19.i.i, %bb.h
  %i.ar = phi ptr [ %.pre.i.i, %._crit_edge19.i.i ], [ %i.aa, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ab ; 3 uses
  store ptr %i.am, ptr %i.as, align 8, !noalias !53415
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ao, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !53415
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !53415
  %i.at = add nuw nsw i64 %i.ab, 1                ; 3 uses
  store i64 %i.at, ptr %i.x, align 8, !alias.scope !53414, !noalias !53409
  %i.au = icmp eq ptr %i.ac, %i.y
  br i1 %i.au, label %._crit_edge.loopexit.i.i, label %bb.d

bb.k:                                             ; preds = %bb.t, %bb.g
  %i.av = phi ptr [ %i.ad, %bb.t ], [ %i.w, %bb.g ]
  %.val40.i.i = load i64, ptr %i.e, align 8, !noalias !53409 ; 2 uses
  %i.aw = icmp eq i64 %.val40.i.i, 0
  br i1 %i.aw, label %_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural20prepared_read_length.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val41.i.i = load ptr, ptr %i.av, align 8, !noalias !53409, !nonnull !76, !noundef !76
  %i.ax = mul nuw i64 %.val40.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41.i.i, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !53411
  br label %_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural20prepared_read_length.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ay = load ptr, ptr %i.ad, align 8, !noalias !53409, !nonnull !76, !noundef !76 ; 2 uses
  invoke fastcc void @_RNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef %i.ae)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !53416

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53409
  store i64 %i.m, ptr %i.b, align 8, !noalias !53409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53409
  store ptr %i.b, ptr %i.a, align 8, !noalias !53409
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !53409
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !53409
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !53409
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @153, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !53411

bb.o:                                             ; preds = %bb.m
  %.val38.i.i = load i64, ptr %i.e, align 8, !noalias !53409 ; 2 uses
  %i.ba = icmp eq i64 %.val38.i.i, 0
  br i1 %i.ba, label %_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural20prepared_read_length.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = mul nuw i64 %.val38.i.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !53411
  br label %_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural20prepared_read_length.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53409
  call void @llvm.experimental.noalias.scope.decl(metadata !53417)
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !53418, !noalias !53409 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !53418, !noalias !53409 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.57.0.copyload.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !53418, !noalias !53409
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !53419
  %i.bc = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !53419 ; 5 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.q, label %bb.t, !prof !75

bb.q:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !53420

.noexc.i.i.i:                                     ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.bf, label %.body.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !53421
  br label %.body.i.i

bb.t:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.bc, align 8, !noalias !53420
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !53420
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.57.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !53420
  store i8 0, ptr %0, align 8, !alias.scope !53412
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !53412
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @80, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !53412
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @154, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !alias.scope !53412
  br label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReyEEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural20prepared_read_length.exit: ; preds = %bb.k, %bb.l, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53407
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection16validate_indexed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !53426 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider37validate_indexed_projection_structure(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3)
  %i.b = load i8, ptr %i.a, align 8, !range !99, !noundef !76
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53427)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53427, !nonnull !76, !noundef !76 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noalias !53427, !noundef !76 ; 3 uses
  %i.g = icmp ult i64 %i.f, 48038396025285291
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !53427, !nonnull !76, !noundef !76 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.01.0.i.i11 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %i.n = phi ptr [ %i.j, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %i.o = tail call fastcc { i64, i64 } @_RNvNtCsaSXGKSfiU2E_10lance_file6reader31indexed_projection_column_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.n), !noalias !53428 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = extractvalue { i64, i64 } %i.o, 1
  %i.s = add i64 %i.r, %.sroa.01.0.i.i11          ; 3 uses
  %i.t = icmp uge i64 %i.s, %.sroa.01.0.i.i11
  %narrow.i.not.i.i = select i1 %i.q, i1 %i.t, i1 false
  br i1 %narrow.i.not.i.i, label %bb.d, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread2

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread2: ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load i64, ptr %4, align 8, !alias.scope !53427, !noundef !76
  %6 = icmp ult i64 %5, 2305843009213693952
  tail call void @llvm.assume(i1 %6)
  br label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !53427, !noundef !76 ; 2 uses
  %i.w = icmp ult i64 %i.v, 2305843009213693952
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.s, %i.v
  br i1 %i.x, label %bb.f, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread: ; preds = %bb.c, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread2, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit
  tail call void @_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider24indexed_projection_error(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3)
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection7prepare(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !53431 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !53432
  %i.a = tail call noundef align 8 dereferenceable_or_null(528) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 528, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !53432 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtBL_24StructuralReadProjectionNtBN_14ReadProjection7prepare0E3newBP_.exit, !prof !75

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 528) #49
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtBL_24StructuralReadProjectionNtBN_14ReadProjection7prepare0E3newBP_.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store i8 0, ptr %.sroa.82.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @1303, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file8versions4v2_1NtB4_13FieldStrategyNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !53433 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file8versions4v2_2NtB4_13FieldStrategyNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !53434 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file8versions4v2_3NtB4_13FieldStrategyNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !53435 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53440 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !53441, !noundef !76 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split8

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit

.split8:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.c

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.c

_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.c

bb.c:                                             ; preds = %.split8, %.split, %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit
  %i.j = load ptr, ptr %1, align 8, !nonnull !76, !noundef !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !76, !align !77, !noundef !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !76, !nonnull !76
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1056, i64 noundef 2)
  br i1 %i.o, label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !alias.scope !53442, !noundef !76 ; 2 uses
  %i.r = and i32 %i.q, 33554432
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, 67108864
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7

bb.h:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7

_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit7: ; preds = %bb.h, %bb.g, %bb.f, %.split8, %.split, %bb.c, %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ true, %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit ], [ true, %.split8 ], [ true, %.split ], [ %i.w, %bb.g ], [ %i.x, %bb.h ], [ %i.v, %bb.f ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53447 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !53448, !noundef !76 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split8

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit

.split8:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.c

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.c

_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.c

bb.c:                                             ; preds = %.split8, %.split, %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit
  %i.j = load ptr, ptr %1, align 8, !nonnull !76, !noundef !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !76, !align !77, !noundef !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !76, !nonnull !76
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1056, i64 noundef 2)
  br i1 %i.o, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !alias.scope !53449, !noundef !76 ; 2 uses
  %i.r = and i32 %i.q, 33554432
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, 67108864
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7

bb.h:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7

_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit7: ; preds = %bb.h, %bb.g, %bb.f, %.split8, %.split, %bb.c, %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ true, %_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt.exit ], [ true, %.split8 ], [ true, %.split ], [ %i.w, %bb.g ], [ %i.x, %bb.h ], [ %i.v, %bb.f ]
  ret i1 %.sroa.0.0
}
end_hunk_1
