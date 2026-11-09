Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert7convert:bb.a
.cont.i.i204:                                     ; preds = %.invoke.i.i203
  unreachable

bb.pv:                                            ; preds = %bb.pu
  %i.blo = load ptr, ptr %i.blj, align 8, !alias.scope !18240, !noalias !18241, !nonnull !10, !noundef !10 ; 5 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !18242
  store ptr inttoptr (i64 16 to ptr), ptr %i.dl, align 8, !noalias !18242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.blf, i8 0, i64 16, i1 false), !noalias !18242
  %i.blq = invoke noundef i64 @_RNvMNtNtCsdaEETE4DqmE_13typst_library5model7headingNtB2_11HeadingElem13resolve_level(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.blp, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.dl)
          to label %.noexc15.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241

.noexc15.i.i.i.i.i.i.i:                           ; preds = %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !18242
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blo, i64 281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !18242
  store ptr inttoptr (i64 16 to ptr), ptr %i.dk, align 8, !noalias !18242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.blg, i8 0, i64 16, i1 false), !noalias !18242
  %.val.i.i.i.i.i.i.i.i.i = load i8, ptr %i.blr, align 1, !range !70, !noalias !18242, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.pw, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.pw:                                            ; preds = %.noexc15.i.i.i.i.i.i.i
  %i.bls = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model7heading1__NtB9_11HeadingElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc16.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241 ; 4 uses

.noexc16.i.i.i.i.i.i.i:                           ; preds = %bb.pw
  %.not.i.i.i.i.i.i.i.i.i.i.i.i220 = icmp eq ptr %i.bls, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i220, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.px

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !18242
  br label %bb.pz

bb.px:                                            ; preds = %.noexc16.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18243)
  %i.blt = load ptr, ptr %i.bls, align 8, !alias.scope !18243, !noalias !18244, !nonnull !10, !noundef !10 ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bls, i64 8
  %i.blv = load ptr, ptr %i.blu, align 8, !alias.scope !18243, !noalias !18244, !nonnull !10, !align !21, !noundef !10
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 40
  %i.blx = load ptr, ptr %i.blw, align 8, !invariant.load !10, !noalias !18245, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !18245
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 24
  %i.blz = load ptr, ptr %i.bly, align 8, !invariant.load !10, !noalias !18245, !nonnull !10
  invoke void %i.blz(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.di, ptr noundef nonnull %i.blt) #40
          to label %.noexc17.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241, !inline_history !17542

.noexc17.i.i.i.i.i.i.i:                           ; preds = %bb.px
  %i.bma = load i128, ptr %i.di, align 16, !noalias !18245, !noundef !10
  %i.bmb = icmp eq i128 %i.bma, -35505341979167806708230916569692453210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !18245
  br i1 %i.bmb, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtB8_4auto5SmartbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i, label %.invoke37.i.i, !prof !16

.invoke37.i.i:                                    ; preds = %.noexc20.i.i.i.i.i.i.i, %.noexc17.i.i.i.i.i.i.i
  %i.bmc = phi i8 [ 6, %.noexc17.i.i.i.i.i.i.i ], [ 5, %.noexc20.i.i.i.i.i.i.i ]
  %i.bmd = phi ptr [ %i.bls, %.noexc17.i.i.i.i.i.i.i ], [ %i.bmh, %.noexc20.i.i.i.i.i.i.i ]
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model7heading1__NtB9_11HeadingElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef %i.bmc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bmd) #39
          to label %.cont38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241

.cont38.i.i:                                      ; preds = %.invoke37.i.i
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtB8_4auto5SmartbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc17.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i221 = load i8, ptr %i.blt, align 1, !range !64, !noalias !18246, !noundef !10
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtB8_4auto5SmartbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc15.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.val.i.i.i.i.i.i.i.i.i, %.noexc15.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i221, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtB8_4auto5SmartbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !18242
  %.not.i.i.i.i.i.i.i.i.i205 = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i205, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i
  %i.bme = trunc nuw i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i1
  br label %bb.qd

bb.pz:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh6_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i.i.i.i.i.i
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blo, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !18242
  store ptr inttoptr (i64 16 to ptr), ptr %i.dj, align 8, !noalias !18242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.blh, i8 0, i64 16, i1 false), !noalias !18242
  %.val7.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bmf, align 1, !range !64, !noalias !18242, !noundef !10 ; 2 uses
  %.not.i10.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val7.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not.i10.i.i.i.i.i.i.i.i.i, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.bmg = trunc nuw i8 %.val7.i.i.i.i.i.i.i.i.i to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh5_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.qb:                                            ; preds = %bb.pz
  %i.bmh = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model7heading1__NtB9_11HeadingElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 5)
          to label %.noexc19.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241 ; 4 uses

.noexc19.i.i.i.i.i.i.i:                           ; preds = %bb.qb
  %.not.i.i.i11.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bmh, null
  br i1 %.not.i.i.i11.i.i.i.i.i.i.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh5_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, label %bb.qc

bb.qc:                                            ; preds = %.noexc19.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18247)
  %i.bmi = load ptr, ptr %i.bmh, align 8, !alias.scope !18247, !noalias !18248, !nonnull !10, !noundef !10 ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmh, i64 8
  %i.bmk = load ptr, ptr %i.bmj, align 8, !alias.scope !18247, !noalias !18248, !nonnull !10, !align !21, !noundef !10
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 40
  %i.bmm = load ptr, ptr %i.bml, align 8, !invariant.load !10, !noalias !18249, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !18250
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 24
  %i.bmo = load ptr, ptr %i.bmn, align 8, !invariant.load !10, !noalias !18249, !nonnull !10
  invoke void %i.bmo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dh, ptr noundef nonnull %i.bmi) #40
          to label %.noexc20.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241, !inline_history !17542

.noexc20.i.i.i.i.i.i.i:                           ; preds = %bb.qc
  %i.bmp = load i128, ptr %i.dh, align 16, !noalias !18250, !noundef !10
  %i.bmq = icmp eq i128 %i.bmp, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !18250
  br i1 %i.bmq, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i, label %.invoke37.i.i, !prof !16

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i.i.i.i
  %i.bmr = load i8, ptr %i.bmi, align 1, !range !11, !alias.scope !18251, !noalias !18252, !noundef !10
  %i.bms = trunc nuw i8 %i.bmr to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh5_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh5_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i, %bb.qa
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.bmg, %bb.qa ], [ %i.bms, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i ], [ true, %.noexc19.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !18242
  br label %bb.qd

bb.qd:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh5_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %bb.py
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i1 [ %i.bme, %bb.py ], [ %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model7heading11HeadingElemKh5_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i ]
  %i.bmt = load i64, ptr %i.bli, align 8, !range !24, !noalias !18242, !noundef !10
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bmt, -1
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.bmu = load i128, ptr %i.blo, align 16, !range !68, !noalias !18253, !noundef !10
  %i.bmv = trunc nuw i128 %i.bmu to i1
  br i1 %i.bmv, label %_RNCNCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0s_0B7_.exit.i.i.i.i.i.i.i.i.i, label %.invoke.i.i203, !prof !16

_RNCNCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0s_0B7_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.qe
  %.val8.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bkq, align 8, !noalias !18242, !nonnull !10, !noundef !10
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.blo, i64 16
  %i.bmx = load i128, ptr %i.bmw, align 16, !noalias !18253
  %i.bmy = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i.i.i.i.i, i64 16
  %i.bmz = invoke noundef i64 @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector4page(ptr noundef nonnull align 8 %i.bmy, i128 noundef %i.bmx)
          to label %.noexc23.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241

.noexc23.i.i.i.i.i.i.i:                           ; preds = %_RNCNCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0s_0B7_.exit.i.i.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bmz, i64 1)
  %i.bna = invoke noundef zeroext i1 @_RNvMs7_NtNtCsdaEETE4DqmE_13typst_library6layout4pageNtB5_10PageRanges13includes_page(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bli, i64 noundef %..i.i.i.i.i.i.i.i.i.i)
          to label %.noexc24.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18241

.noexc24.i.i.i.i.i.i.i:                           ; preds = %.noexc23.i.i.i.i.i.i.i
  %i.bnb = xor i1 %i.bna, true
  %i.bnc = zext i1 %i.bnb to i8
  br label %bb.qf

bb.qf:                                            ; preds = %.noexc24.i.i.i.i.i.i.i, %bb.qd
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bnc, %.noexc24.i.i.i.i.i.i.i ], [ 1, %bb.qd ]
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %.sroa.01.0.i.i.i.i.i.i.i.i.i, i8 %.sroa.04.0.i.i.i.i.i.i.i.i.i, i8 0
  %i.bnd = getelementptr inbounds nuw [24 x i8], ptr %i.bld, i64 %.val10.i.i.i.i.i.i.i ; 3 uses
  store ptr %i.blj, ptr %i.bnd, align 8, !noalias !18254
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  store i64 %i.blq, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !18255
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bnd, i64 16
  store i8 %spec.select.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !18255
  %i.bne = add nuw i64 %.val10.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bnf = icmp eq i64 %i.bne, %i.bkx
  br i1 %i.bnf, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1e_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2Z_4iter8adapters3map3MapINtNtNtB2Z_5slice4iter4IterNtB1a_7ContentENCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0EE9from_iterB5w_.exit.i, label %bb.pu

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc23.i.i.i.i.i.i.i, %_RNCNCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0s_0B7_.exit.i.i.i.i.i.i.i.i.i, %bb.qc, %bb.qb, %bb.px, %bb.pw, %bb.pv, %.invoke37.i.i, %.invoke.i.i203
  %lpad.loopexit.split-lp2011 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bld, i64 noundef %.idx.i202, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18256
  br label %.body.i200

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1e_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2Z_4iter8adapters3map3MapINtNtNtB2Z_5slice4iter4IterNtB1a_7ContentENCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0EE9from_iterB5w_.exit.i: ; preds = %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !18234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !18257
  store i64 0, ptr %i.dg, align 8, !noalias !18257
  %i.bng = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bng, align 8, !noalias !18257
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store i64 0, ptr %i.bnh, align 8, !noalias !18257
  %i.bni = icmp ult i64 %i.bkx, 384307168202282326
  call void @llvm.assume(i1 %i.bni)
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bld, i64 %.idx.i202
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %.sroa.4.0..sroa_idx.i.i206 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1A_5model7heading11HeadingElemEINtNtNtB4_3num7nonzero7NonZerojEbEEECs8jFhWeO2DFb_9typst_pdf.exit25.i.i: ; preds = %bb.qk
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bld, i64 noundef %.idx.i202, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18258
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeRINtNtNtNtB1f_11foundations7content6packed6PackedNtNtB1d_7heading11HeadingElemEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #44
          to label %.body.i200 unwind label %bb.qn, !noalias !18257

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.qi, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1e_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2Z_4iter8adapters3map3MapINtNtNtB2Z_5slice4iter4IterNtB1a_7ContentENCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0EE9from_iterB5w_.exit.i
  %.sroa.0.071.i.i = phi i64 [ 0, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1e_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2Z_4iter8adapters3map3MapINtNtNtB2Z_5slice4iter4IterNtB1a_7ContentENCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0EE9from_iterB5w_.exit.i ], [ %.sroa.0.1.i.i, %bb.qi ] ; 4 uses
  %.sroa.529.070.i.i = phi ptr [ %i.bld, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1e_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2Z_4iter8adapters3map3MapINtNtNtB2Z_5slice4iter4IterNtB1a_7ContentENCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0EE9from_iterB5w_.exit.i ], [ %i.bnm, %bb.qi ] ; 4 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %.sroa.529.070.i.i, i64 24 ; 2 uses
  %.sroa.031.0.copyload.i.i = load ptr, ptr %.sroa.529.070.i.i, align 8, !noalias !18259 ; 3 uses
  %.sroa.532.0..sroa.529.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.529.070.i.i, i64 8
  %.sroa.532.0.copyload.i.i = load i64, ptr %.sroa.532.0..sroa.529.8..sroa_idx.i.i, align 8, !noalias !18259
  %.sroa.532.0.copyload.fr.i.i = freeze i64 %.sroa.532.0.copyload.i.i ; 6 uses
  %.sroa.633.0..sroa.529.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.529.070.i.i, i64 16
  %.sroa.633.0.copyload.i.i = load i8, ptr %.sroa.633.0..sroa.529.8..sroa_idx.i.i, align 8, !noalias !18259
  switch i8 %.sroa.633.0.copyload.i.i, label %.preheader.i.i [
    i8 2, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i
    i8 0, label %bb.qh
  ]

.preheader.i.i:                                   ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.copyload.i.i) ]
  %i.bnn = load i64, ptr %i.bnh, align 8, !noalias !18257, !noundef !10 ; 5 uses
  %.not1743.i.i = icmp eq i64 %i.bnn, 0
  br i1 %.not1743.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.preheader.i.i
  %.not18.i.i216 = icmp eq i64 %.sroa.0.071.i.i, 0
  br i1 %.not18.i.i216, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i215
  %invariant.umin.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.071.i.i, i64 %.sroa.532.0.copyload.fr.i.i) ; 2 uses
  %i.bno = load ptr, ptr %i.bng, align 8, !noalias !18257, !nonnull !10, !noundef !10
  %i.bnp = getelementptr [40 x i8], ptr %i.bno, i64 %i.bnn ; 2 uses
  %i.bnq = getelementptr i8, ptr %i.bnp, i64 -8
  %i.bnr = load i64, ptr %i.bnq, align 8, !range !25, !noalias !18257, !noundef !10
  %or.cond.i38.i = icmp ult i64 %i.bnr, %invariant.umin.i.i
  br i1 %or.cond.i38.i, label %.lr.ph.i217, label %._crit_edge.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i215
  %i.bns = load ptr, ptr %i.bng, align 8, !noalias !18257, !nonnull !10, !noundef !10
  %i.bnt = getelementptr [40 x i8], ptr %i.bns, i64 %i.bnn ; 2 uses
  %i.bnu = getelementptr i8, ptr %i.bnt, i64 -8
  %i.bnv = load i64, ptr %i.bnu, align 8, !range !25, !noalias !18257, !noundef !10
  %i.bnw = icmp ult i64 %i.bnv, %.sroa.532.0.copyload.fr.i.i
  br i1 %i.bnw, label %.lr.ph65.i.i, label %._crit_edge.i.i

bb.qg:                                            ; preds = %.lr.ph65.i.i
  %i.bnx = load ptr, ptr %i.boc, align 8, !noalias !18257, !nonnull !10, !noundef !10
  %i.bny = getelementptr [40 x i8], ptr %i.bnx, i64 %i.boe ; 2 uses
  %i.bnz = getelementptr i8, ptr %i.bny, i64 -8
  %i.boa = load i64, ptr %i.bnz, align 8, !range !25, !noalias !18257, !noundef !10
  %i.bob = icmp ult i64 %i.boa, %.sroa.532.0.copyload.fr.i.i
  br i1 %i.bob, label %.lr.ph65.i.i, label %._crit_edge.loopexit.i.i

.lr.ph65.i.i:                                     ; preds = %.lr.ph.split.us.i.i, %bb.qg
  %.pn.i.i219 = phi ptr [ %i.bny, %bb.qg ], [ %i.bnt, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.boc = getelementptr i8, ptr %.pn.i.i219, i64 -32 ; 2 uses
  %i.bod = getelementptr i8, ptr %.pn.i.i219, i64 -24
  %i.boe = load i64, ptr %i.bod, align 8, !noalias !18257, !noundef !10 ; 3 uses
  %.not17.us.i.i = icmp eq i64 %i.boe, 0
  br i1 %.not17.us.i.i, label %._crit_edge.loopexit.i.i, label %bb.qg

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i: ; preds = %bb.qi, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bld, i64 noundef %.idx.i202, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18260
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.thread.i

bb.qh:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.copyload.i.i) ]
  %i.bof = add i64 %.sroa.0.071.i.i, -1
  %or.cond.not.i.i = icmp ult i64 %i.bof, %.sroa.532.0.copyload.fr.i.i
  %spec.select.i.i208 = select i1 %or.cond.not.i.i, i64 %.sroa.0.071.i.i, i64 %.sroa.532.0.copyload.fr.i.i
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qm, %bb.qh
  %.sroa.0.1.i.i = phi i64 [ 0, %bb.qm ], [ %spec.select.i.i208, %bb.qh ]
  %i.bog = icmp eq ptr %i.bnm, %i.bnj
  br i1 %i.bog, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i

.lr.ph.i217:                                      ; preds = %.lr.ph.split.preheader.i.i, %.lr.ph.split.i.i
  %i.boh = phi ptr [ %i.bom, %.lr.ph.split.i.i ], [ %i.bnp, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.boi = getelementptr i8, ptr %i.boh, i64 -32  ; 2 uses
  %i.boj = getelementptr i8, ptr %i.boh, i64 -24
  %i.bok = load i64, ptr %i.boj, align 8, !noalias !18257, !noundef !10 ; 3 uses
  %.not17.i.i = icmp eq i64 %i.bok, 0
  br i1 %.not17.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i217
  %i.bol = load ptr, ptr %i.boi, align 8, !noalias !18257, !nonnull !10, !noundef !10
  %i.bom = getelementptr [40 x i8], ptr %i.bol, i64 %i.bok ; 2 uses
  %i.bon = getelementptr i8, ptr %i.bom, i64 -8
  %i.boo = load i64, ptr %i.bon, align 8, !range !25, !noalias !18257, !noundef !10
  %or.cond.i.i218 = icmp ult i64 %i.boo, %invariant.umin.i.i
  br i1 %or.cond.i.i218, label %.lr.ph.i217, label %._crit_edge.i.loopexit.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph65.i.i, %bb.qg
  %i.bop = getelementptr i8, ptr %.pn.i.i219, i64 -40
  br label %._crit_edge.i.i

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.split.i.i, %.lr.ph.i217
  %i.boq = getelementptr i8, ptr %i.boh, i64 -40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %._crit_edge.loopexit.i.i, %.lr.ph.split.us.i.i, %.lr.ph.split.preheader.i.i, %.preheader.i.i
  %.sroa.03.0.lcssa42.i.i = phi ptr [ %i.dg, %.preheader.i.i ], [ %i.dg, %.lr.ph.split.us.i.i ], [ %i.bop, %._crit_edge.loopexit.i.i ], [ %i.dg, %.lr.ph.split.preheader.i.i ], [ %i.boq, %._crit_edge.i.loopexit.i ] ; 3 uses
  %.lcssa41.i.i = phi ptr [ %i.bng, %.preheader.i.i ], [ %i.bng, %.lr.ph.split.us.i.i ], [ %i.boc, %._crit_edge.loopexit.i.i ], [ %i.bng, %.lr.ph.split.preheader.i.i ], [ %i.boi, %._crit_edge.i.loopexit.i ]
  %.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bnn, %.lr.ph.split.us.i.i ], [ %i.boe, %._crit_edge.loopexit.i.i ], [ %i.bnn, %.lr.ph.split.preheader.i.i ], [ %i.bok, %._crit_edge.i.loopexit.i ] ; 3 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa42.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !18257
  store ptr %.sroa.031.0.copyload.i.i, ptr %i.bnk, align 8, !noalias !18257
  store i64 %.sroa.532.0.copyload.fr.i.i, ptr %i.bnl, align 8, !noalias !18257
  store i64 0, ptr %i.df, align 8, !noalias !18257
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i206, align 8, !noalias !18257
  store i64 0, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !18257
  call void @llvm.experimental.noalias.scope.decl(metadata !18261)
  %i.bos = load i64, ptr %.sroa.03.0.lcssa42.i.i, align 8, !range !17, !alias.scope !18261, !noalias !18257, !noundef !10
  %i.bot = icmp eq i64 %.lcssa.i.i, %i.bos
  br i1 %i.bot, label %bb.qj, label %bb.qm

bb.qj:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeRINtNtNtNtBT_11foundations7content6packed6PackedNtNtBR_7heading11HeadingElemEEE8grow_oneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.03.0.lcssa42.i.i)
          to label %bb.qm unwind label %bb.qk, !noalias !18262

bb.qk:                                            ; preds = %bb.qj
  %i.bou = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeRINtNtNtNtB1f_11foundations7content6packed6PackedNtNtB1d_7heading11HeadingElemEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.df)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1A_5model7heading11HeadingElemEINtNtNtB4_3num7nonzero7NonZerojEbEEECs8jFhWeO2DFb_9typst_pdf.exit25.i.i unwind label %bb.ql, !noalias !18263, !inline_history !17573

bb.ql:                                            ; preds = %bb.qk
  %i.bov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18264
  unreachable

bb.qm:                                            ; preds = %bb.qj, %._crit_edge.i.i
  %i.bow = load ptr, ptr %.lcssa41.i.i, align 8, !alias.scope !18261, !noalias !18257, !nonnull !10, !noundef !10
  %i.box = getelementptr inbounds nuw [40 x i8], ptr %i.bow, i64 %.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.box, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.df, i64 40, i1 false), !noalias !18263
  %i.boy = add i64 %.lcssa.i.i, 1
  store i64 %i.boy, ptr %i.bor, align 8, !alias.scope !18261, !noalias !18257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !18257
  br label %bb.qi

bb.qn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1A_5model7heading11HeadingElemEINtNtNtB4_3num7nonzero7NonZerojEbEEECs8jFhWeO2DFb_9typst_pdf.exit25.i.i
  %i.boz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18257
  unreachable

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.thread.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1e_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2Z_4iter8adapters3map3MapINtNtNtB2Z_5slice4iter4IterNtB1a_7ContentENCNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline0EE9from_iterB5w_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !18265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !18257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !18234
  store i64 0, ptr %i.dp, align 8, !noalias !18234
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !18234
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !18234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !18234
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.bpb = load ptr, ptr %i.bpa, align 8, !noalias !18234, !nonnull !10, !noundef !10
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.bpd = load i64, ptr %i.bpc, align 8, !noalias !18234, !noundef !10
  invoke fastcc void @_RNvNtCs8jFhWeO2DFb_9typst_pdf7outline12convert_list(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bpb, i64 noundef %i.bpd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %i.hs)
          to label %bb.qq unwind label %bb.qp, !noalias !18235

bb.qo:                                            ; preds = %bb.qr, %bb.qp
  %.pn.i209 = phi { ptr, i32 } [ %i.bpn, %bb.qr ], [ %i.bpe, %bb.qp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interchange7outline7OutlineECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.qw, !noalias !18235

bb.qp:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.thread.i
  %i.bpe = landingpad { ptr, i32 }
          cleanup
  br label %bb.qo

bb.qq:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB17_5model7heading11HeadingElemEINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEbEENtNtNtNtB2S_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.thread.i
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.bpg = load ptr, ptr %i.bpf, align 8, !noalias !18234, !nonnull !10, !noundef !10 ; 4 uses
  %i.bph = load i64, ptr %i.do, align 8, !range !17, !noalias !18234, !noundef !10
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.bpj = load i64, ptr %i.bpi, align 8, !noalias !18234, !noundef !10 ; 3 uses
  %i.bpk = icmp ult i64 %i.bpj, 144115188075855872
  call void @llvm.assume(i1 %i.bpk)
  %.idx47.i = shl nuw nsw i64 %i.bpj, 6
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpg, i64 %.idx47.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !18234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !18234
  store ptr %i.bpg, ptr %i.dn, align 8, !noalias !18234
  %.sroa.4.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 %i.bph, ptr %.sroa.5.0..sroa_idx.i211, align 8, !noalias !18234
  %.sroa.6.0..sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %i.bpl, ptr %.sroa.6.0..sroa_idx.i212, align 8, !noalias !18234
  %i.bpm = icmp eq i64 %i.bpj, 0
  br i1 %i.bpm, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i: ; preds = %bb.qq
  %.sroa.7.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i

bb.qr:                                            ; preds = %bb.qs
  %i.bpn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bpp, ptr %.sroa.4.0..sroa_idx.i210, align 8, !noalias !18234
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn) #44
          to label %bb.qo unwind label %bb.qw, !noalias !18235

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.qv, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i
  %i.bpo = phi ptr [ %i.bpg, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i ], [ %i.bpp, %bb.qv ] ; 3 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 64 ; 4 uses
  %.sroa.024.0.copyload25.i = load i64, ptr %i.bpo, align 8, !noalias !18266 ; 2 uses
  %.not.i214 = icmp eq i64 %.sroa.024.0.copyload25.i, -1
  br i1 %.not.i214, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i, label %bb.qs

bb.qs:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.7.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.bpo, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !18234
  store i64 %.sroa.024.0.copyload25.i, ptr %i.dm, align 8, !noalias !18234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i213, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx26.i, i64 56, i1 false), !noalias !18235
  invoke void @_RNvMs3_NtNtCsidf7BFzONoc_6krilla11interchange7outlineNtB5_7Outline10push_child(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.dm)
          to label %bb.qv unwind label %bb.qr, !noalias !18235

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %bb.qv, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.qq
  %i.bpq = phi ptr [ %i.bpg, %bb.qq ], [ %i.bpl, %bb.qv ], [ %i.bpp, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i ]
  store ptr %i.bpq, ptr %.sroa.4.0..sroa_idx.i210, align 8, !noalias !18234
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn)
          to label %bb.qt unwind label %bb.qp, !noalias !18235

bb.qt:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !18234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false), !noalias !18233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !18234
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeRINtNtNtNtB1f_11foundations7content6packed6PackedNtNtB1d_7heading11HeadingElemEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dq)
          to label %bb.qu unwind label %bb.pq, !noalias !18235

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !18234
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %i.bkw, i64 %i.bkx)
          to label %_RNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline.exit unwind label %.body224.thread428

bb.qv:                                            ; preds = %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !18234
  %i.bpr = icmp eq ptr %i.bpp, %i.bpl
  br i1 %i.bpr, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidf7BFzONoc_6krilla11interchange7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i

bb.qw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interchange7outline7OutlineECs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.qr, %bb.qo, %.body.i200, %bb.po
  %i.bps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18235
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interchange7outline7OutlineECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.qo
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeRINtNtNtNtB1f_11foundations7content6packed6PackedNtNtB1d_7heading11HeadingElemEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dq) #44
          to label %.body.i200 unwind label %bb.qw, !noalias !18235

.body224.thread428:                               ; preds = %bb.td, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8jFhWeO2DFb_9typst_pdf.exit.thread32.i, %_RNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline.exit, %bb.qu, %bb.rm, %bb.rn, %bb.rz, %bb.si, %bb.sp
  %lpad.thr_comm426 = landingpad { ptr, i32 }
          cleanup
  br label %.body224.thread

_RNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline.exit: ; preds = %bb.qu
  invoke void @_RNvMs_NtCsidf7BFzONoc_6krilla8documentNtB4_8Document11set_outline(ptr noalias nofree noundef nonnull align 8 dereferenceable(2800) %i.hu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.hq)
          to label %bb.qx unwind label %.body224.thread428

bb.qx:                                            ; preds = %_RNvNtCs8jFhWeO2DFb_9typst_pdf7outline13build_outline.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp)
end_hunk_0
