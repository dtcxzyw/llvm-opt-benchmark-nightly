Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_5model5quote9QuoteElemKh0_EINtB2_17PropertyValCopiedB1X_bKB2t_E3valB8_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22392)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !22392, !noalias !22393, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !22392, !noalias !22393, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !22394, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22395
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !22394, !nonnull !10
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #40, !noalias !22394, !inline_history !22389
  %i.m = load i128, ptr %i.a, align 16, !noalias !22395, !noundef !10
  %i.n = icmp eq i128 %i.m, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22395
  br i1 %i.n, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5quote1__NtB9_9QuoteElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #39, !noalias !22396
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.f, align 1, !range !11, !alias.scope !22397, !noalias !22398, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5quote9QuoteElemKh0_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5quote9QuoteElemKh0_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %bb.c, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.p, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_5model5table9TableCellKhb_EINtB2_17PropertyValCopiedB1X_bKB2t_E3valB8_(i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i = icmp eq i8 %.0.val, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.0.val to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5table9TableCellKhb_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5tables3_1__NtB9_9TableCellNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 11) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5table9TableCellKhb_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22412)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !22412, !noalias !22413, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !22412, !noalias !22413, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !22414, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22415
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !22414, !nonnull !10
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #40, !noalias !22414, !inline_history !22409
  %i.m = load i128, ptr %i.a, align 16, !noalias !22415, !noundef !10
  %i.n = icmp eq i128 %i.m, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22415
  br i1 %i.n, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5tables3_1__NtB9_9TableCellNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #39, !noalias !22416
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.f, align 1, !range !11, !alias.scope !22417, !noalias !22418, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5table9TableCellKhb_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5table9TableCellKhb_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %bb.c, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.p, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_6layout4grid8GridCellKha_EINtB2_17PropertyValCopiedB1X_bKB2s_E3valB8_(i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i = icmp eq i8 %.0.val, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.0.val to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout4grid8GridCellKha_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4grids3_1__NtB9_8GridCellNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 10) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout4grid8GridCellKha_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22432)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !22432, !noalias !22433, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !22432, !noalias !22433, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !22434, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22435
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !22434, !nonnull !10
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #40, !noalias !22434, !inline_history !22429
  %i.m = load i128, ptr %i.a, align 16, !noalias !22435, !noundef !10
  %i.n = icmp eq i128 %i.m, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22435
  br i1 %i.n, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4grids3_1__NtB9_8GridCellNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #39, !noalias !22436
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.f, align 1, !range !11, !alias.scope !22437, !noalias !22438, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout4grid8GridCellKha_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout4grid8GridCellKha_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %bb.c, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.p, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_6layout5place9PlaceElemKh2_EINtB2_17PropertyValCopiedB1X_bKB2u_E3valB8_(i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i = icmp eq i8 %.0.val, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.0.val to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout5place9PlaceElemKh2_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout5place1__NtB9_9PlaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 2) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout5place9PlaceElemKh2_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22452)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !22452, !noalias !22453, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !22452, !noalias !22453, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !22454, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22455
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !22454, !nonnull !10
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #40, !noalias !22454, !inline_history !22449
  %i.m = load i128, ptr %i.a, align 16, !noalias !22455, !noundef !10
  %i.n = icmp eq i128 %i.m, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22455
  br i1 %i.n, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout5place1__NtB9_9PlaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #39, !noalias !22456
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.f, align 1, !range !11, !alias.scope !22457, !noalias !22458, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout5place9PlaceElemKh2_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout5place9PlaceElemKh2_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %bb.c, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.p, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtBZ_13ValidatorsExt11to_and_list0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtB11_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 15 uses
  %.val = load i8, ptr %0, align 1, !range !11, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val1 = load i8, ptr %i.e, align 1, !range !18, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22467
  %i.f = trunc nuw i8 %.val to i1                 ; 12 uses
  switch i8 %.val1, label %.split.i.i.i.us.i.i.i [
    i8 9, label %.loopexit204.i.i.i
    i8 10, label %.loopexit155.i.i.i
    i8 0, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i
    i8 1, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i
    i8 2, label %.loopexit64.us.i.i.i
    i8 3, label %.split.preheader.i.i.i.us.i.1.i.i
    i8 4, label %.split.preheader.i.i.i.us.i.1.i.loopexit46.i
    i8 5, label %.split.preheader.i.i.i.us.i.1.i.loopexit.i
    i8 6, label %.split.preheader.i.i.i.us.i.1.loopexit.i.i
    i8 7, label %.loopexit46.i.i.a
    i8 8, label %.loopexit11.i.i.a
  ]

.split.i.i.i.us.i.i.i:                            ; preds = %bb.a
  br i1 %i.f, label %.split.preheader.i.i.i.us.i.1.i.thread.i, label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt11to_and_list0B9_.exit

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.loopexit155.i.i.i:                               ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.loopexit204.i.i.i:                               ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.loopexit11.i.i.a:                                ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.loopexit46.i.i.a:                                ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.split.preheader.i.i.i.us.i.1.loopexit.i.i:       ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.split.preheader.i.i.i.us.i.1.i.loopexit.i:       ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.split.preheader.i.i.i.us.i.1.i.loopexit46.i:     ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.split.preheader.i.i.i.us.i.1.i.i:                ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

.loopexit64.us.i.i.i:                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.split.preheader.i.i.i.us.i.1.i.thread.i

common.resume.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %bb.c, %.split.preheader.i.i.i.us.i.1.i.thread.i
  %.sroa.29.0..sroa_idx15 = phi ptr [ %.sroa.29.0..sroa_idx9, %.split.preheader.i.i.i.us.i.1.i.thread.i ], [ %.sroa.29.0..sroa_idx, %bb.c ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %.val60.i = load i64, ptr %.sroa.29.0..sroa_idx15, align 8, !alias.scope !22468, !noalias !22467, !noundef !10 ; 2 uses
  %i.g = icmp ugt i64 %.val60.i, 2
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, label %common.resume.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %.loopexit.split-lp.i
  %.val59.i = load ptr, ptr %i.d, align 8, !noalias !22467, !nonnull !10, !noundef !10
  %i.h = shl nuw i64 %.val60.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !22469
  br label %common.resume.i

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22467
  %.val58.i.pr.pre = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !alias.scope !22468, !noalias !22467 ; 2 uses
  %i.i = icmp ugt i64 %.val58.i.pr.pre, 2
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecARej2_EECs8jFhWeO2DFb_9typst_pdf.exit62.sink.split.i, label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt11to_and_list0B9_.exit

.split.preheader.i.i.i.us.i.1.i.thread.i:         ; preds = %.split.i.i.i.us.i.i.i, %.split.preheader.i.i.i.us.i.1.i.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i, %.loopexit64.us.i.i.i, %.loopexit204.i.i.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i, %.loopexit155.i.i.i, %.split.preheader.i.i.i.us.i.1.i.loopexit46.i, %.split.preheader.i.i.i.us.i.1.i.loopexit.i, %.split.preheader.i.i.i.us.i.1.loopexit.i.i, %.loopexit46.i.i.a, %.loopexit11.i.i.a
  %.sroa.15.0.ph = phi i64 [ 7, %.loopexit11.i.i.a ], [ 8, %.loopexit46.i.i.a ], [ 8, %.split.preheader.i.i.i.us.i.1.loopexit.i.i ], [ 8, %.split.preheader.i.i.i.us.i.1.i.loopexit.i ], [ 8, %.split.preheader.i.i.i.us.i.1.i.loopexit46.i ], [ 8, %.split.preheader.i.i.i.us.i.1.i.i ], [ 8, %.loopexit64.us.i.i.i ], [ 8, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i ], [ 8, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i ], [ 8, %.loopexit155.i.i.i ], [ 8, %.loopexit204.i.i.i ], [ 8, %.split.i.i.i.us.i.i.i ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ @142, %.loopexit11.i.i.a ], [ @141, %.loopexit46.i.i.a ], [ @140, %.split.preheader.i.i.i.us.i.1.loopexit.i.i ], [ @139, %.split.preheader.i.i.i.us.i.1.i.loopexit.i ], [ @138, %.split.preheader.i.i.i.us.i.1.i.loopexit46.i ], [ @137, %.split.preheader.i.i.i.us.i.1.i.i ], [ @136, %.loopexit64.us.i.i.i ], [ @135, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i ], [ @134, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i ], [ @144, %.loopexit155.i.i.i ], [ @143, %.loopexit204.i.i.i ], [ @145, %.split.i.i.i.us.i.i.i ] ; 2 uses
  store ptr %.sroa.0.0.ph, ptr %i.d, align 8, !noalias !22470
  %.sroa.15.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.15.0.ph, ptr %.sroa.15.0..sroa_idx6, align 8, !noalias !22470
  %.sroa.27.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @145, ptr %.sroa.27.0..sroa_idx7, align 8, !noalias !22470
  %.sroa.28.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 8, ptr %.sroa.28.0..sroa_idx8, align 8, !noalias !22470
  %.sroa.29.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 1, ptr %.sroa.29.0..sroa_idx9, align 8, !noalias !22470
  %i.j = invoke noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.ph, i64 noundef %.sroa.15.0.ph)
          to label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt11to_and_list0B9_.exit unwind label %.loopexit.split-lp.i

bb.c:                                             ; preds = %.loopexit64.us.i.i.i, %.split.preheader.i.i.i.us.i.1.i.i, %.split.preheader.i.i.i.us.i.1.i.loopexit46.i, %.split.preheader.i.i.i.us.i.1.i.loopexit.i, %.split.preheader.i.i.i.us.i.1.loopexit.i.i, %.loopexit46.i.i.a, %.loopexit11.i.i.a, %.loopexit204.i.i.i, %.loopexit155.i.i.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i
  %.sroa.15.1 = phi i64 [ 8, %.loopexit204.i.i.i ], [ 8, %.loopexit155.i.i.i ], [ 8, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i ], [ 8, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i ], [ 8, %.loopexit64.us.i.i.i ], [ 8, %.split.preheader.i.i.i.us.i.1.i.i ], [ 8, %.split.preheader.i.i.i.us.i.1.i.loopexit46.i ], [ 8, %.split.preheader.i.i.i.us.i.1.i.loopexit.i ], [ 8, %.split.preheader.i.i.i.us.i.1.loopexit.i.i ], [ 8, %.loopexit46.i.i.a ], [ 7, %.loopexit11.i.i.a ]
  %.sroa.0.1 = phi ptr [ @143, %.loopexit204.i.i.i ], [ @144, %.loopexit155.i.i.i ], [ @134, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit5.i.us.i.i.i ], [ @135, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.loopexit6.i.us.i.i.i ], [ @136, %.loopexit64.us.i.i.i ], [ @137, %.split.preheader.i.i.i.us.i.1.i.i ], [ @138, %.split.preheader.i.i.i.us.i.1.i.loopexit46.i ], [ @139, %.split.preheader.i.i.i.us.i.1.i.loopexit.i ], [ @140, %.split.preheader.i.i.i.us.i.1.loopexit.i.i ], [ @141, %.loopexit46.i.i.a ], [ @142, %.loopexit11.i.i.a ]
  store ptr %.sroa.0.1, ptr %i.d, align 8, !noalias !22470
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.15.1, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !22470
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr @145, ptr %.sroa.27.0..sroa_idx, align 8, !noalias !22470
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 8, ptr %.sroa.28.0..sroa_idx, align 8, !noalias !22470
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store i64 2, ptr %.sroa.29.0..sroa_idx, align 8, !noalias !22470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22467
  store ptr %i.d, ptr %i.c, align 8, !noalias !22467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22467
  store ptr %.sroa.27.0..sroa_idx, ptr %i.b, align 8, !noalias !22467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22467
  store ptr %i.c, ptr %i.a, align 8, !noalias !22467
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCs8jFhWeO2DFb_9typst_pdf, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !22467
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8, !noalias !22467
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCs8jFhWeO2DFb_9typst_pdf, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !22467
  %i.l = load ptr, ptr %1, align 8, !alias.scope !22467, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !22467, !nonnull !10, !align !21, !noundef !10
  %i.o = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @132, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %.loopexit.split-lp.i, !noalias !22467 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecARej2_EECs8jFhWeO2DFb_9typst_pdf.exit62.sink.split.i: ; preds = %bb.b
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !22467, !nonnull !10, !noundef !10
  %i.p = shl nuw i64 %.val58.i.pr.pre, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !10
  br label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt11to_and_list0B9_.exit

_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt11to_and_list0B9_.exit: ; preds = %.split.i.i.i.us.i.i.i, %.split.preheader.i.i.i.us.i.1.i.thread.i, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecARej2_EECs8jFhWeO2DFb_9typst_pdf.exit62.sink.split.i
  %.sroa.0.2.i = phi i1 [ %i.j, %.split.preheader.i.i.i.us.i.1.i.thread.i ], [ %i.o, %bb.b ], [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecARej2_EECs8jFhWeO2DFb_9typst_pdf.exit62.sink.split.i ], [ false, %.split.i.i.i.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22467
  ret i1 %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtBZ_13ValidatorsExt13to_comma_list0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtB11_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.val = load i8, ptr %0, align 1, !range !11, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val1 = load i8, ptr %i.b, align 1, !range !18, !noundef !10
  %spec.select.i.i = tail call i8 @llvm.umin.i8(i8 range(i8 -1, 11) %.val1, i8 -2)
  %..i.i = or disjoint i8 %.val, -2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22485
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i8 %spec.select.i.i, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !noalias !22485
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 %..i.i, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 1, !noalias !22485
  %.sroa.01.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 -3, ptr %.sroa.01.sroa.7.0..sroa_idx.i, align 8, !noalias !22485
  %.sroa.01.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 -3, ptr %.sroa.01.sroa.8.0..sroa_idx.i, align 1, !noalias !22485
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !22485
  %.not3.i.i.i.i = icmp eq i8 %.val, 0
  br label %.split.preheader.i.i.i.i

.split.preheader.i.i.i.i:                         ; preds = %switch.lookup, %bb.a
  %.lcssa1927.i = phi i64 [ %.lcssa8, %switch.lookup ], [ 0, %bb.a ] ; 3 uses
  %i.c = phi i64 [ %i.g, %switch.lookup ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.i.i.i.i20.not.i.not = icmp eq i64 %.lcssa1927.i, 2
  br i1 %.not.i.i.i.i.i.i20.not.i.not, label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt13to_comma_list0B9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.preheader.i.i.i.i
  %i.d = add nuw nsw i64 %.lcssa1927.i, 1         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.4.0..sroa_idx.i, i64 %.lcssa1927.i
  %i.f = load i8, ptr %i.e, align 1, !range !85, !alias.scope !22486, !noalias !22485, !noundef !10 ; 2 uses
  %.not3.i.i.i.i.peel = icmp eq i8 %i.f, -2
  br i1 %.not3.i.i.i.i.peel, label %.split.i.i.i.i.peel, label %.loopexit

.split.i.i.i.i.peel:                              ; preds = %.lr.ph.i.preheader
  %.not.i.i.i.i.i.i.not.i.peel = icmp eq i64 %i.d, 2
  %brmerge = or i1 %.not.i.i.i.i.i.i.not.i.peel, %.not3.i.i.i.i
  br i1 %brmerge, label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt13to_comma_list0B9_.exit, label %.loopexit

.loopexit:                                        ; preds = %.split.i.i.i.i.peel, %.lr.ph.i.preheader
  %.lcssa8 = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ 2, %.split.i.i.i.i.peel ]
  %.lcssa = phi i8 [ %i.f, %.lr.ph.i.preheader ], [ -1, %.split.i.i.i.i.peel ]
  %i.g = add i64 %i.c, 1                          ; 2 uses
  store i64 %i.g, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !22487, !noalias !22485
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.b, %.loopexit
  %switch.tableidx = add nsw i8 %.lcssa, 1        ; 2 uses
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtBZ_13ValidatorsExt13to_comma_list0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtB11_, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep12 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtBZ_13ValidatorsExt13to_comma_list0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtB11_.1725, i64 %i.j
  %switch.load13 = load ptr, ptr %switch.gep12, align 8
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load13, i64 noundef %switch.ext)
  br i1 %i.k, label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt13to_comma_list0B9_.exit, label %.split.preheader.i.i.i.i

bb.b:                                             ; preds = %.loopexit
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2)
  br i1 %i.l, label %_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt13to_comma_list0B9_.exit, label %switch.lookup

_RNCNvXs6_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsidf7BFzONoc_6krilla9configure8validate10ValidatorsNtB7_13ValidatorsExt13to_comma_list0B9_.exit: ; preds = %.split.i.i.i.i.peel, %.split.preheader.i.i.i.i, %bb.b, %switch.lookup
  %.not.i.i.i.i.i.i15.i = phi i1 [ false, %.split.preheader.i.i.i.i ], [ false, %.split.i.i.i.i.peel ], [ true, %switch.lookup ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22485
  ret i1 %.not.i.i.i.i.i.i15.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtCsiSzwKAiqS6b_8smallvec8SmallVecAhj20_EENtNtB8_3fmt5Write9write_strCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10
  tail call fastcc void @_RNvXsm_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #40
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvCs8jFhWeO2DFb_9typst_pdfs_1__NtB7_11PdfStandardNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBU_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @528, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB5_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage11icc_profile(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !72, !noundef !10
  %switch = icmp samesign ult i64 %i.g, 4
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !10
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { ptr, i64 } @_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = tail call { ptr, i64 } @_RNvXNtCsbMQOdixSu6G_5image6traitsShNtB2_15EncodableLayout8as_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.n, %bb.c ], [ null, %bb.b ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB5_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load atomic i32, ptr %i.c acquire, align 4, !noalias !22490
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2L_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2N_(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit: ; preds = %bb.a, %bb.b
  %i.f = load i64, ptr %i.b, align 8, !range !24, !noundef !10
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !10
  br label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit, %bb.c
  %.sroa.3.0 = phi i64 [ %i.j, %bb.c ], [ undef, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ null, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zEB2S_.exit ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB5_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
end_hunk_0
