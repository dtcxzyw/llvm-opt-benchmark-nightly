inline.NumInlined: 16754
inline.NumDeleted: 9657
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15089)
  %i.i = load i64, ptr %0, align 8, !range !107, !alias.scope !15089, !noundef !3
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15093)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @4, ptr %i.f, align 8, !noalias !15093
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.v, align 8, !noalias !15093
  %i.w = load i64, ptr %i.p, align 8, !range !96, !noalias !15093, !noundef !3
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 13, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !15093
  store <2 x i32> %i.bd, ptr %.sroa.954.0..sroa_idx.i, align 8, !noalias !15093
  %.sroa.1356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @4, ptr %.sroa.1356.0..sroa_idx.i, align 8, !noalias !15093
  %.sroa.1557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.g, ptr %.sroa.1557.0..sroa_idx.i, align 8, !noalias !15093
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !3, !noalias !15093, !nonnull !3
  invoke void %i.bf(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #16
end_hunk_2
