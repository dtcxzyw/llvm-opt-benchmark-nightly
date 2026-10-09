Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.04?download=true
inline.NumInlined: 176
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader15can_evict_value:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.b)
  %i.c = load i32, ptr %i.a, align 8, !range !6, !noundef !3
  %i.d = icmp eq i32 %i.c, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  %i.b = alloca [16 x i8], align 4                ; 15 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.55 = alloca [16 x i8], align 8           ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.g)
  %i.h = load i32, ptr %i.f, align 8, !range !6, !noundef !3
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %.sroa.03.0.copyload4, %bb.c ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0, ptr %i.e, align 8
  %.sroa.013.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55, i64 16, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 9 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 6 uses
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.peel.begin

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.03.0.copyload4 = load i64, ptr %i.n, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx6, i64 16, i1 false)
  br label %bb.b

.peel.begin:                                      ; preds = %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit, %bb.b
  %.pre.i = phi ptr [ %.pre.i.pre, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit ], [ null, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.o = icmp eq ptr %.pre.i, null
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !369
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2e_4find5checkB1s_QNCNvMsm_B1u_NtB1u_10QueryEdges12iter_outputs0E0INtNtNtBb_3ops12control_flow11ControlFlowB1s_EEB1w_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noalias noundef nonnull %.sroa.414.0..sroa_idx), !noalias !370
  %i.p = load i32, ptr %i.b, align 4, !range !7, !noalias !369, !noundef !3
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %.loopexit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !369
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !371, !noalias !372
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.peel.begin
  %i.r = load i64, ptr %i.e, align 8, !range !8, !alias.scope !373, !noalias !374, !noundef !3 ; 3 uses
  %.not.i4.i.peel = icmp eq i64 %i.r, -1
  br i1 %.not.i4.i.peel, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %.sroa.5.sroa.0.0.copyload.i.i.i.peel = load ptr, ptr %.sroa.013.sroa.2.0..sroa_idx, align 8, !alias.scope !376, !noalias !374
  %.sroa.5.sroa.4.0.copyload.i.i.i.peel = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 8, !alias.scope !376, !noalias !374
  store i64 2, ptr %i.e, align 8, !alias.scope !377, !noalias !378
  %.not.i.i.i.peel = icmp eq i64 %i.r, 2
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.peel = select i1 %i.s, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.peel, ptr inttoptr (i64 4 to ptr) ; 3 uses
  %.not3.i.peel = icmp eq ptr %.sroa.0.0.i.i.i.i.i.peel, null
  %or.cond.i.peel = select i1 %.not.i.i.i.peel, i1 true, i1 %.not3.i.peel
  br i1 %or.cond.i.peel, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i, label %.peel.next

.peel.next:                                       ; preds = %bb.g
  %.sroa.6.0.i.i.i.i.i.peel = select i1 %i.s, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.peel, i64 0
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i.i.i.i.i.peel, i64 %.sroa.6.0.i.i.i.i.i.peel
  store ptr %.sroa.0.0.i.i.i.i.i.peel, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !367, !noalias !374
  store ptr %i.t, ptr %i.j, align 8, !alias.scope !367, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !379
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2e_4find5checkB1s_QNCNvMsm_B1u_NtB1u_10QueryEdges12iter_outputs0E0INtNtNtBb_3ops12control_flow11ControlFlowB1s_EEB1w_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noalias noundef nonnull %.sroa.414.0..sroa_idx), !noalias !370
  %i.u = load i32, ptr %i.b, align 4, !range !7, !noalias !379, !noundef !3
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %.loopexit28, label %.lr.ph

.loopexit28:                                      ; preds = %bb.i, %.peel.next, %bb.d
  %.sroa.4.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.k, align 4, !noalias !380
  %.sroa.4.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !380
  %.sroa.4.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit

.lr.ph:                                           ; preds = %.peel.next, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !383, !noalias !372
  %.pre = load i64, ptr %i.e, align 8, !range !8, !alias.scope !373, !noalias !374 ; 3 uses
  %.not.i4.i = icmp eq i64 %.pre, -1
  br i1 %.not.i4.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %.sroa.5.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.013.sroa.2.0..sroa_idx, align 8, !alias.scope !385, !noalias !374
  %.sroa.5.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 8, !alias.scope !385, !noalias !374
  store i64 2, ptr %i.e, align 8, !alias.scope !377, !noalias !386
  %.not.i.i.i = icmp eq i64 %.pre, 2
  %i.w = trunc nuw i64 %.pre to i1                ; 2 uses
  %.sroa.0.0.i.i.i.i.i = select i1 %i.w, ptr %.sroa.5.sroa.0.0.copyload.i.i.i, ptr inttoptr (i64 4 to ptr) ; 3 uses
  %.not3.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0.i.i.i.i.i = select i1 %i.w, i64 %.sroa.5.sroa.4.0.copyload.i.i.i, i64 0
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !367, !noalias !374
  store ptr %i.x, ptr %i.j, align 8, !alias.scope !367, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !387
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2e_4find5checkB1s_QNCNvMsm_B1u_NtB1u_10QueryEdges12iter_outputs0E0INtNtNtBb_3ops12control_flow11ControlFlowB1s_EEB1w_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noalias noundef nonnull %.sroa.414.0..sroa_idx), !noalias !370
  %i.y = load i32, ptr %i.b, align 4, !range !7, !noalias !387, !noundef !3
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %.loopexit28, label %.lr.ph, !llvm.loop !350

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i: ; preds = %bb.h, %.lr.ph, %bb.g, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.aa = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !389, !noalias !390, !noundef !3
  %.not.i5.i = icmp eq ptr %i.aa, null
  br i1 %.not.i5.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2e_4find5checkB1s_QNCNvMsm_B1u_NtB1u_10QueryEdges12iter_outputs0E0INtNtNtBb_3ops12control_flow11ControlFlowB1s_EEB1w_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.414.0..sroa_idx, ptr noalias noundef nonnull %i.l), !noalias !392
  %i.ab = load i32, ptr %i.a, align 4, !range !7, !noalias !391, !noundef !3
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_.exit.i11.i, label %bb.k

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_.exit.i11.i: ; preds = %bb.j
  %.sroa.4.sroa.0.0.copyload.i.i.i12.i = load i32, ptr %i.m, align 4, !noalias !393
  %.sroa.4.sroa.4.0.copyload.i.i.i14.i = load i32, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i13.i, align 4, !noalias !393
  %.sroa.4.sroa.5.0.copyload.i.i.i16.i = load i32, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i15.i, align 4, !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  br label %.loopexit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit: ; preds = %.loopexit28, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_.exit.i11.i
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.sink = phi i32 [ %.sroa.4.sroa.0.0.copyload.i.i.i.i, %.loopexit28 ], [ %.sroa.4.sroa.0.0.copyload.i.i.i12.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_.exit.i11.i ]
  %.sroa.10.0.in = phi i32 [ %.sroa.4.sroa.5.0.copyload.i.i.i.i, %.loopexit28 ], [ %.sroa.4.sroa.5.0.copyload.i.i.i16.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_.exit.i11.i ]
  %.sroa.8.0 = phi i32 [ %.sroa.4.sroa.4.0.copyload.i.i.i.i, %.loopexit28 ], [ %.sroa.4.sroa.4.0.copyload.i.i.i14.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_.exit.i11.i ]
  %i.ad = add i32 %.sroa.4.sroa.0.0.copyload.i.i.i.i.sink, 1 ; 2 uses
  %i.ae = icmp ne i32 %i.ad, 0
  call void @llvm.assume(i1 %i.ae)
  %.sroa.10.0 = and i32 %.sroa.10.0.in, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ad, ptr %i.d, align 4
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex21mark_validated_output(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre.i.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !383, !noalias !372
  br label %.peel.begin

.loopexit:                                        ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20AtomicIterationStamp15store_iteration(ptr nofree noundef nonnull align 2 captures(none) %0, i16 noundef %1) unnamed_addr #4 {
bb.a:
  store atomic i16 %1, ptr %0 release, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i16 @_RNvMs2_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20AtomicIterationStamp4load(ptr nofree noundef nonnull align 2 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load atomic i16, ptr %0 monotonic, align 2
  ret i16 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCsC8CapfvpQ1_5salsa8functionNtNtB5_4memo10MemoHeader18provisional_status(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = tail call noundef i16 @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions9iteration(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.c = load atomic i64, ptr %1 acquire, align 8 ; 3 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 2 uses
  %i.f = load atomic i8, ptr %i.e monotonic, align 2
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr %i.e monotonic, align 2
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
  br label %_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit

bb.e:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.a)
  br label %_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit

_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.e ], [ @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.c ], [ @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.b, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i, ptr %i.n, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.b, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.p, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit
  %storemerge = phi i16 [ 2, %bb.f ], [ 0, %_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit ]
  store i16 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs2_NtCsC8CapfvpQ1_5salsa8functionNtNtB5_4memo10MemoHeader19finalize_cycle_head(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  store atomic i8 1, ptr %i.a release, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsC8CapfvpQ1_5salsa8functionNtNtB5_4memo10MemoHeader25set_cycle_iteration_count(ptr noundef nonnull align 8 %0, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions19set_iteration_count(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %1, i16 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads11iter_not_eq(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !alias.scope !396, !nonnull !3, !noundef !3
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  store ptr %i.a, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads15allocation_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = shl nuw nsw i64 %i.c, 4
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads17remove_all_except(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %.idx = shl i64 %i.c, 4                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !3 ; 3 uses
  %i.h = load i32, ptr %1, align 4, !range !4     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = add i64 %.idx, -16                       ; 2 uses
  %i.l = and i64 %i.k, 16
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = icmp eq i32 %i.o, %i.g
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.prol.preheader
  %i.q = load i32, ptr %i.a, align 4, !range !4, !noundef !3
  %i.r = icmp eq i32 %i.q, %i.h
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i32, ptr %i.s, align 4, !noundef !3
  %i.u = icmp eq i32 %i.t, %i.j
  br i1 %i.u, label %.prol.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.prol.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store atomic i8 1, ptr %i.v release, align 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %bb.c, %bb.d, %.lr.ph
  %.sroa.0.02.unr = phi ptr [ %i.a, %.lr.ph ], [ %i.m, %bb.d ], [ %i.m, %bb.c ]
  %i.w = icmp eq i64 %i.k, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.backedge.1
  %.sroa.0.02 = phi ptr [ %i.ah, %.backedge.1 ], [ %.sroa.0.02.unr, %.prol.loopexit ] ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 4
  %i.z = load i32, ptr %i.y, align 4, !noundef !3
  %i.aa = icmp eq i32 %i.z, %i.g
  br i1 %i.aa, label %bb.e, label %bb.g

._crit_edge:                                      ; preds = %.prol.loopexit, %.backedge.1, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph.new
  %i.ab = load i32, ptr %.sroa.0.02, align 4, !range !4, !noundef !3
  %i.ac = icmp eq i32 %i.ab, %i.h
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !3
  %i.af = icmp eq i32 %i.ae, %i.j
  br i1 %i.af, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.e, %.lr.ph.new, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 14
  store atomic i8 1, ptr %i.ag release, align 2
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !3
  %i.ak = icmp eq i32 %i.aj, %i.g
  br i1 %i.ak, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.backedge
  %i.al = load i32, ptr %i.x, align 4, !range !4, !noundef !3
  %i.am = icmp eq i32 %i.al, %i.h
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 24
  %i.ao = load i32, ptr %i.an, align 4, !noundef !3
  %i.ap = icmp eq i32 %i.ao, %i.j
  br i1 %i.ap, label %.backedge.1, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.backedge
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 30
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_22TryClaimCycleHeadsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next:bb.a

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 7 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !494
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.k = load atomic i8, ptr %i.j monotonic, align 1, !noalias !494
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b

_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.c
  %.sroa.03.0.copyload = load i32, ptr %i.g, align 4 ; 2 uses
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa.0.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa.0.0..sroa_idx, align 4
  %i.m = load ptr, ptr %1, align 8, !nonnull !3, !align !10, !noundef !3 ; 5 uses
  %i.n = zext i32 %.sroa.6.0.copyload to i64      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  store i16 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.t, %bb.d
  ret void

bb.f:                                             ; preds = %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.n ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !align !10, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !3, !nonnull !3
  %i.z = tail call { ptr, ptr } %i.y(ptr noundef nonnull %i.u) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %.not29 = icmp eq ptr %i.aa, null
  br i1 %.not29, label %bb.i, label %bb.h, !prof !15

bb.g:                                             ; preds = %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  store ptr %i.aa, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = call noundef nonnull align 8 ptr @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef10sync_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @_RNvMNtNtCsC8CapfvpQ1_5salsa8function4syncNtB2_9SyncTable10peek_claim(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull align 8 %i.m, i32 noundef %.sroa.03.0.copyload, i32 noundef %.sroa.5.0.copyload, i1 noundef zeroext true)
  %i.ae = load i8, ptr %i.b, align 8, !range !495, !noundef !3
  switch i8 %i.ae, label %default.unreachable39 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.s
  ]

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #25
  unreachable

default.unreachable39:                            ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  store i16 1, ptr %0, align 8
  br label %bb.t

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !align !10, !noundef !3 ; 4 uses
  store i16 2, ptr %0, align 8
  %.val.i.i = load ptr, ptr %i.ag, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val1.i.i = load ptr, ptr %i.ah, align 8       ; 6 uses
  %i.ai = cmpxchg ptr %.val.i.i, i8 1, i8 0 release monotonic, align 1
  %i.aj = extractvalue { i8, i1 } %i.ai, 1
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val.i.i, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.al = cmpxchg ptr %.val1.i.i, i8 1, i8 0 release monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.r, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.an = cmpxchg ptr %.val1.i.i, i8 1, i8 0 release monotonic, align 1
  %i.ao = extractvalue { i8, i1 } %i.an, 1
  br i1 %i.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit, label %bb.o, !prof !12

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 48, i64 noundef 8) #26
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i, %bb.o
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 48, i64 noundef 8) #26
  br label %bb.t

bb.s:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef18provisional_status(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.m, i32 noundef %.sroa.03.0.copyload, i32 noundef %.sroa.5.0.copyload)
  %i.ar = load i16, ptr %i.a, align 8, !range !13, !noundef !3 ; 2 uses
  %.not30 = icmp eq i16 %i.ar, -1
  br i1 %.not30, label %bb.v, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.u:                                             ; preds = %bb.s
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.59.0.copyload = load i16, ptr %.sroa.59.0..sroa_idx, align 2 ; 2 uses
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.812.0.copyload = load i64, ptr %.sroa.812.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = icmp eq i16 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !11, !noundef !3
  %i.av = icmp ne i64 %.sroa.812.0.copyload, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %.sroa.812.0.copyload, %i.au
  br i1 %i.aw, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ay = load atomic i16, ptr %i.ax monotonic, align 4
  store i16 0, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ay, ptr %.sroa.419.0..sroa_idx, align 2
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.sroa.59.0.copyload, ptr %.sroa.520.0..sroa_idx, align 4
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.812.0.copyload, ptr %.sroa.622.0..sroa_idx, align 8
  br label %bb.t

bb.y:                                             ; preds = %bb.w
  %.sroa.3.0.extract.shift = lshr i16 %.sroa.59.0.copyload, 8
  %.sroa.3.0.extract.trunc = trunc nuw i16 %.sroa.3.0.extract.shift to i8
  %i.az = call noundef i8 @_RNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB5_7Runtime18cancellation_count(ptr noundef nonnull align 8 %i.at)
  %i.ba = icmp eq i8 %i.az, %.sroa.3.0.extract.trunc
  br i1 %i.ba, label %bb.aa, label %bb.z, !prof !15

bb.z:                                             ; preds = %bb.y, %bb.w
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.aa:                                            ; preds = %bb.y
  call void @_RNvMNtCsC8CapfvpQ1_5salsa9cancelledNtB2_9Cancelled5throw(i8 noundef 2) #25
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 4 ptr @_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.promoted = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.e, %bb.c ], [ %.promoted, %bb.a ] ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.g = load atomic i8, ptr %i.f monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 4 ptr @_RNvXs8_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.promoted = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.e, %bb.c ], [ %.promoted, %bb.a ] ; 3 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %.split.loop.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -2
  %i.g = load atomic i8, ptr %i.f monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.split.loop.exit5, label %bb.b

.split.loop.exit5:                                ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs9_NtCsC8CapfvpQ1_5salsa5cycleRNtB5_10CycleHeadsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !498, !nonnull !3, !noundef !3
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtCsC8CapfvpQ1_5salsa5cycleNtB4_9CycleHeadNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 15)) %0, ptr nofree noundef nonnull align 4 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load atomic i16, ptr %i.a monotonic, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.d = load atomic i8, ptr %i.c monotonic, align 2
  %i.e = icmp ne i8 %i.d, 0
  %i.f = zext i1 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.b, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.f, ptr %i.h, align 2
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsa_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeadsINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9CycleHeadE4from(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 1)
  store i64 %i.b, ptr %i.a, align 8
  invoke void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE4pushBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !503, !nonnull !3, !noundef !3
  %i.e = icmp eq ptr %i.d, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.01.0.copyload

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define { i32, i32 } @_RNvXsb_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20CycleHeadIdsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !506, !nonnull !3, !noundef !3
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !506
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.e, %bb.c ], [ %.promoted.i, %bb.a ] ; 5 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !506
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.g = load atomic i8, ptr %i.f monotonic, align 1, !noalias !506
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b

_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.c
  %i.i = load i32, ptr %i.c, align 4, !range !4, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !3
  br label %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread

_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.b, %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.3.0 = phi i32 [ %i.k, %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i32 [ %i.i, %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ], [ 0, %bb.b ]
  %i.l = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.m = insertvalue { i32, i32 } %i.l, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValuesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 28, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNtB5_5Debug3fmtBz_(ptr noundef nonnull align 4 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20AtomicIterationStampNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 2 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 10, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 16, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 18, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_(ptr noundef nonnull align 8) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef dereferenceable(13)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB5_10ClaimGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0EB1c_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), i32 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), i32 noundef, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2e_4find5checkB1s_QNCNvMsm_B1u_NtB1u_10QueryEdges12iter_outputs0E0INtNtNtBb_3ops12control_flow11ControlFlowB1s_EEB1w_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsC8CapfvpQ1_5salsa5eventNtB2_5Event3new(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa12active_query10QueryStackNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(13)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsC8CapfvpQ1_5salsa8function12diff_outputs19report_stale_output(ptr noundef nonnull align 8, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB6_8IndexSetNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB1C_4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_6filter6FilterINtNtB41_6copied6CopiedINtNtNtB1C_5slice4iter4IterNtNtBS_11zalsa_local9QueryEdgeEENCNvMsm_B5B_NtB5B_10QueryEdges12iter_outputs0ENvMsi_B5B_B5z_3keyEEBS_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsffXo9NmvYC7_8indexmap3set4iterINtB6_8IndexSetNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEENtNtNtNtB1H_4iter6traits7collect12IntoIterator9into_iterBX_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11swap_removeBO_EBS_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11accumulated(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues4load(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_RNvNtCsC8CapfvpQ1_5salsa7runtime22never_changed_revision() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions9iteration(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB5_7Runtime18cancellation_count(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions18tracked_struct_ids(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex19remove_stale_output(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex21mark_validated_output(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions19set_iteration_count(ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCsC8CapfvpQ1_5salsa5cycle14IterationStampBM_EBQ_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE4pushBK_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard23seed_tracked_struct_ids(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard14seed_iteration(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjvLTWb8VeNU_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsdyr9GQQDC9w_7tracing15___macro_support12___is_enabled(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB15_4memo10MemoHeader18previous_iterations_0EB17_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden void @_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iteration0Ba_(ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #3

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvMNtCsC8CapfvpQ1_5salsa9cancelledNtB2_9Cancelled5throw(i8 noundef range(i8 0, 3)) unnamed_addr #19

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden void @_RNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), i64 noundef range(i64 1, 0), i64 noundef range(i64 1, 0)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsr_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10QueryEdgesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues5store(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex19maybe_changed_after(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noundef nonnull, ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef18provisional_status(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsC8CapfvpQ1_5salsa8function4syncNtB2_9SyncTable9try_claim(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCsC8CapfvpQ1_5salsa7runtimeNtB4_7Running8block_on(ptr noalias noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef10sync_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsC8CapfvpQ1_5salsa8function4syncNtB2_9SyncTable10peek_claim(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomicbENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomictENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsC8CapfvpQ1_5salsa10durabilityNtB2_10DurabilityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(13), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtB6_5Debug3fmtB18_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { noreturn }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i32 1, i32 0}
!5 = !{i64 4}
!6 = !{i32 0, i32 3}
!7 = !{i32 0, i32 2}
!8 = !{i64 -1, i64 3}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{i64 8}
!11 = !{i64 1, i64 0}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i16 -1, i16 3}
!14 = !{i8 0, i8 4}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = distinct !{!17, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!18 = distinct !{!18, !17, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!19 = distinct !{!19, !17, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!20 = distinct !{!20, i1 false, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!21 = distinct !{!21, !20, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!22 = distinct !{!22, !20, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!23 = distinct !{!23, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!24 = distinct !{!24, !23, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!25 = distinct !{!25, !23, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!26 = distinct !{!26, i1 false, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!27 = distinct !{!27, !26, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!28 = distinct !{!28, !26, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!29 = distinct !{!29, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!30 = distinct !{!30, !29, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!31 = distinct !{!31, !29, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!32 = distinct !{!32, i1 false, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!33 = distinct !{!33, !32, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!34 = distinct !{!34, !32, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!35 = !{!18}
!36 = !{!19}
!37 = !{!21}
!38 = !{!22}
!39 = !{!21, !18}
!40 = !{!22, !19}
!41 = !{!24}
!42 = !{!25}
!43 = !{!27}
!44 = !{!28}
!45 = !{!27, !24}
!46 = !{!28, !25}
!47 = !{!30}
!48 = !{!31}
!49 = !{!33}
!50 = !{!34}
!51 = !{!33, !30}
!52 = !{!34, !31}
!53 = distinct !{!53, i1 false, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!54 = distinct !{!54, !53, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!55 = distinct !{!55, !53, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!56 = distinct !{!56, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapjECsC8CapfvpQ1_5salsa"}
!57 = distinct !{!57, !56, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapjECsC8CapfvpQ1_5salsa: argument 0"}
!58 = distinct !{!58, !56, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapjECsC8CapfvpQ1_5salsa: argument 1"}
!59 = distinct !{!59, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa"}
!60 = distinct !{!60, !59, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa: argument 0"}
!61 = distinct !{!61, !69, !70}
!62 = distinct !{!62, !70, !69}
!63 = !{!54}
!64 = !{!55}
!65 = !{!57}
!66 = !{!58}
!67 = !{!57, !60}
!68 = !{!58, !60}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, i1 false, !"_RNvYNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtBa_10MemoHeader16mark_as_verified0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBe_"}
!72 = distinct !{!72, !71, !"_RNvYNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtBa_10MemoHeader16mark_as_verified0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBe_: argument 1"}
!73 = distinct !{!73, !71, !"_RNvYNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtBa_10MemoHeader16mark_as_verified0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBe_: argument 0"}
!74 = distinct !{!74, i1 false, !"_RNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB7_10MemoHeader16mark_as_verified0Bb_"}
!75 = distinct !{!75, !74, !"_RNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB7_10MemoHeader16mark_as_verified0Bb_: argument 1"}
!76 = distinct !{!76, !74, !"_RNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB7_10MemoHeader16mark_as_verified0Bb_: argument 0"}
!77 = !{!76, !75, !73, !72}
!78 = !{!76, !75, !73}
!79 = !{!75, !72}
!80 = distinct !{!80, i1 false, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_"}
!81 = distinct !{!81, !80, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_: argument 1"}
!82 = distinct !{!82, i1 false, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_"}
!83 = distinct !{!83, !82, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_: argument 1:Peel0"}
!84 = distinct !{!84, !80, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1R_12output_edgesEIB1c_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1R_9QueryEdgeEENCNvMsm_B1R_B1P_12iter_outputs0ENvMsi_B1R_B4a_3keyEENtNtNtB9_6traits8iterator8Iterator4nextB1T_: argument 0"}
!85 = distinct !{!85, !82, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_: argument 0"}
!86 = distinct !{!86, i1 false, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_"}
!87 = distinct !{!87, !86, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_: argument 1"}
!88 = distinct !{!88, !86, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_: argument 0"}
!89 = distinct !{!89, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator4nextB28_"}
!90 = distinct !{!90, !89, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator4nextB28_: argument 1"}
!91 = distinct !{!91, !89, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator4nextB28_: argument 0"}
!92 = distinct !{!92, i1 false, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_"}
!93 = distinct !{!93, !92, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 1"}
!94 = distinct !{!94, !92, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 0"}
!95 = distinct !{!95, i1 false, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_"}
!96 = distinct !{!96, !95, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_: argument 2"}
!97 = distinct !{!97, !95, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_: argument 1"}
!98 = distinct !{!98, !95, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_: argument 0"}
!99 = distinct !{!99, i1 false, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_"}
!100 = distinct !{!100, !99, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1E_12output_edgesEEINtB5_8FuseImplBY_E4nextB1G_: argument 0"}
!101 = distinct !{!101, i1 false, !"_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBQ_"}
!102 = distinct !{!102, !101, !"_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBQ_: argument 0:Peel0"}
!103 = distinct !{!103, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1m_12output_edgesENtNtNtB9_6traits8iterator8Iterator4nextB1o_"}
!104 = distinct !{!104, !103, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENvB1m_12output_edgesENtNtNtB9_6traits8iterator8Iterator4nextB1o_: argument 0"}
!105 = distinct !{!105, !101, !"_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBQ_: argument 1"}
!106 = distinct !{!106, !82, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_: argument 1"}
!107 = distinct !{!107, !101, !"_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBQ_: argument 0"}
!108 = distinct !{!108, !9}
!109 = distinct !{!109, i1 false, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_"}
!110 = distinct !{!110, !109, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_: argument 1"}
!111 = distinct !{!111, !109, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2w_NtB2w_10QueryEdges12iter_outputs0ENvMsi_B2w_B2u_3keyENtNtB2y_3key16DatabaseKeyIndexNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2y_: argument 0"}
!112 = distinct !{!112, i1 false, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_"}
!113 = distinct !{!113, !112, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_: argument 1"}
!114 = distinct !{!114, !112, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B23_NtB23_10QueryEdges12iter_outputs0ENvMsi_B23_B21_3keyENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB25_: argument 0"}
!115 = distinct !{!115, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator4nextB28_"}
!116 = distinct !{!116, !115, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator4nextB28_: argument 1"}
!117 = distinct !{!117, !115, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator4nextB28_: argument 0"}
!118 = distinct !{!118, i1 false, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_"}
!119 = distinct !{!119, !118, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 1"}
!120 = distinct !{!120, !118, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 0"}
!121 = distinct !{!121, i1 false, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_"}
!122 = distinct !{!122, !121, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_: argument 2"}
!123 = distinct !{!123, !121, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_: argument 1"}
!124 = distinct !{!124, !121, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtBa_6traits8iterator8Iterator4findQNCNvMsm_B1p_NtB1p_10QueryEdges12iter_outputs0EB1r_: argument 0"}
!125 = distinct !{!125, i1 false, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1w_"}
!126 = distinct !{!126, !125, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1w_: argument 1:pre.rot"}
!127 = distinct !{!127, !125, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1w_: argument 0"}
!128 = distinct !{!128, !125, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1w_: argument 1"}
!129 = distinct !{!129, !125, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1w_: argument 1:h.rot"}
!130 = !{!81}
!131 = !{!83}
!132 = !{!98, !97, !96, !94, !93, !91, !90, !88, !87, !85, !83, !84, !81}
!133 = !{!83, !81}
!134 = !{!85, !84}
!135 = !{!100, !81}
!136 = !{!84}
!137 = !{!102}
!138 = !{!102, !105, !104, !100, !81}
!139 = !{!105, !104, !100, !81}
!140 = !{!102, !84}
!141 = !{!106}
!142 = !{!98, !97, !96, !94, !93, !91, !90, !88, !87, !85, !106, !84, !81}
!143 = !{!97, !96, !93, !91, !90, !88, !87, !85, !106, !84, !81}
!144 = !{!106, !81}
!145 = !{!107}
!146 = !{!107, !105, !104, !100, !81}
!147 = !{!107, !84}
!148 = !{!110}
!149 = !{!110, !81}
!150 = !{!111, !84}
!151 = !{!124, !123, !122, !120, !119, !117, !116, !114, !113, !111, !110, !84, !81}
!152 = !{!123, !122, !119, !117, !116, !114, !113, !111, !110, !84, !81}
!153 = !{!126}
!154 = !{!127}
!155 = !{!128}
!156 = !{!129}
!157 = distinct !{!157, i1 false, !"_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo"}
!158 = distinct !{!158, !157, !"_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo: argument 0"}
!159 = distinct !{!159, i1 false, !"_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader27validate_may_be_provisional"}
!160 = distinct !{!160, !159, !"_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader27validate_may_be_provisional: argument 0"}
!161 = distinct !{!161, i1 false, !"_RNvNtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_after20validate_provisional"}
!162 = distinct !{!162, !161, !"_RNvNtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_after20validate_provisional: argument 0"}
!163 = distinct !{!163, i1 false, !"_RNvXs9_NtCsC8CapfvpQ1_5salsa5cycleRNtB5_10CycleHeadsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter"}
!164 = distinct !{!164, !163, !"_RNvXs9_NtCsC8CapfvpQ1_5salsa5cycleRNtB5_10CycleHeadsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter: argument 0"}
!165 = distinct !{!165, i1 false, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads4iter"}
!166 = distinct !{!166, !165, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads4iter: argument 0"}
!167 = distinct !{!167, i1 false, !"_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!168 = distinct !{!168, !167, !"_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 0"}
!169 = distinct !{null, null}
!170 = distinct !{!170, i1 false, !"_RNvNtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_after23validate_same_iteration"}
!171 = distinct !{!171, !170, !"_RNvNtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_after23validate_same_iteration: argument 1"}
!172 = distinct !{!172, !170, !"_RNvNtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_after23validate_same_iteration: argument 0"}
!173 = distinct !{!173, i1 false, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads11iter_not_eq"}
!174 = distinct !{!174, !173, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads11iter_not_eq: argument 2"}
!175 = distinct !{!175, !173, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads11iter_not_eq: argument 0"}
!176 = distinct !{!176, !173, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads11iter_not_eq: argument 1"}
!177 = distinct !{!177, i1 false, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads4iter"}
!178 = distinct !{!178, !177, !"_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads4iter: argument 0"}
end_hunk_1
