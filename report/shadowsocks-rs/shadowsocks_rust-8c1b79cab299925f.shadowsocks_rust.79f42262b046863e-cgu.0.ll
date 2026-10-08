Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.sroa.14.0.i = phi i64 [ 0, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ 0, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.14.0.copyload206.i, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %.sroa.7.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.7.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.13.0.copyload202.i, %bb.e ]
  %.sroa.12.0.i = phi i64 [ %.sroa.6152.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.6152.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.12.0.copyload198.i, %bb.e ]
  %.sroa.10.0.i = phi i64 [ %.sroa.5.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.5.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.10.0.copyload192.i, %bb.e ]
  %.sroa.9184.0.i = phi i64 [ %.sroa.0.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.0.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.9184.0.copyload188.i, %bb.e ]
  %.sroa.9.0.i = phi i64 [ %.sroa.7258.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.7258.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.9.0.copyload181.i, %bb.e ]
  %.sroa.8171.0.i = phi i64 [ %.sroa.6257.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.6257.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.8171.0.copyload175.i, %bb.e ]
  %.sroa.7161.0.i = phi i64 [ %.sroa.4.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.4.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.7161.0.copyload165.i, %bb.e ]
  %.sroa.0157.0.i = phi i64 [ %.sroa.0255.0.copyload.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i ], [ %.sroa.0255.0.copyload.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.0157.0.copyload159.i, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 1778
  store i64 %.sroa.0157.0.i, ptr %0, align 8, !alias.scope !129, !noalias !147
  %.sroa.7161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7161.0.i, ptr %.sroa.7161.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(440) %i.m, i64 440, i1 false), !noalias !147
  %.sroa.8171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %.sroa.8171.0.i, ptr %.sroa.8171.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.9184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 %.sroa.9184.0.i, ptr %.sroa.9184.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(632) %i.n, i64 632, i1 false), !noalias !147
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i8 %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.555.sroa.0.i, i64 39, i1 false), !noalias !147
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %.sroa.17.0.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %.sroa.19.0.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i8 %.sroa.20.0.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.21.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.552.sroa.0.i, i64 39, i1 false), !noalias !147
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i64 %.sroa.22.0.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i64 %.sroa.23.0.i, ptr %.sroa.23.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.24.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.24.i, i64 504, i1 false), !noalias !147
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i64 %.sroa.25.0.i, ptr %.sroa.25.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1776
  store i8 %.sroa.26.0.i, ptr %.sroa.26.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !147
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1777
  store i8 %.sroa.27.0.i, ptr %.sroa.27.0..sroa_idx.i, align 1, !alias.scope !129, !noalias !147
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.28.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %i.be, i64 6, i1 false), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %.val.i.i = load i64, ptr %2, align 8, !range !16, !alias.scope !150, !noundef !14 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i, 0
  br i1 %i.bf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB3n_s_0EECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !150
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB3n_s_0EECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB3_9Directive11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB12_EECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1136) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %.sroa.06.i.i = alloca [24 x i8], align 8       ; 5 uses
  %.sroa.7.i.i = alloca [40 x i8], align 8        ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [664 x i8], align 8               ; 9 uses
  %i.i = alloca [472 x i8], align 8               ; 9 uses
  %i.j = alloca [472 x i8], align 8               ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !312, !noalias !313 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313 ; 3 uses
  %i.k = icmp ult i64 %.sroa.5.0.copyload.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.k)
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload.i, 80
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !314
  store i64 0, ptr %i.g, align 8, !alias.scope !315, !noalias !314
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !alias.scope !315, !noalias !314
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.n, align 8, !alias.scope !315, !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !314
  store i64 0, ptr %i.f, align 8, !alias.scope !316, !noalias !314
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !alias.scope !316, !noalias !314
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %i.p, align 8, !alias.scope !316, !noalias !314
  %.not22.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %i.q = phi ptr [ %i.r, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !317
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !317 ; 2 uses
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.518.0.copyload.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !317 ; 2 uses
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.619.0..sroa_idx.i.i, i64 40, i1 false), !noalias !317
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %.sroa.518.0.copyload.i.i, -1
  %i.s = icmp ne i64 %.sroa.4.0.copyload.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.s
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.t = load i64, ptr %i.p, align 8, !alias.scope !318, !noalias !319, !noundef !14 ; 3 uses
  %i.u = load i64, ptr %i.f, align 8, !range !16, !alias.scope !318, !noalias !319, !noundef !14
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #36, !noalias !319
  br label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr %i.o, align 8, !alias.scope !318, !noalias !319, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.t ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i, i64 24, i1 false), !noalias !317
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !noalias !317
  %.sroa.6.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 -1, ptr %.sroa.6.0..sroa_idx11.i.i, align 8, !noalias !317
  %.sroa.7.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, i64 40, i1 false), !noalias !317
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !318, !noalias !319
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = load i64, ptr %i.n, align 8, !alias.scope !320, !noalias !321, !noundef !14 ; 3 uses
  %i.aa = load i64, ptr %i.g, align 8, !range !16, !alias.scope !320, !noalias !321, !noundef !14
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit2.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #36, !noalias !321
  br label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit2.i.i.i

_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit2.i.i.i: ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr %i.m, align 8, !alias.scope !320, !noalias !321, !nonnull !14, !noundef !14
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i, i64 24, i1 false), !noalias !317
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !317
  %.sroa.6.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %.sroa.518.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx13.i.i, align 8, !noalias !317
  %.sroa.7.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx16.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, i64 40, i1 false), !noalias !317
  %i.ae = add i64 %i.z, 1
  store i64 %i.ae, ptr %i.n, align 8, !alias.scope !320, !noalias !321
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit2.i.i.i, %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.not.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.a
  %i.af = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.af, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ag = mul nuw i64 %.sroa.0.0.copyload.i, 80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !317
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %._crit_edge.i.i, %bb.f
  %.sroa.043.0.copyload = load i64, ptr %i.g, align 8, !noalias !322 ; 2 uses
  %.sroa.444.0.copyload = load ptr, ptr %i.m, align 8, !noalias !322, !nonnull !14, !noundef !14 ; 6 uses
  %.sroa.5.0.copyload = load i64, ptr %i.n, align 8, !noalias !322 ; 4 uses
  %.sroa.646.24.copyload = load i64, ptr %i.f, align 8, !noalias !322 ; 2 uses
  %.sroa.8.24.copyload = load ptr, ptr %i.o, align 8, !noalias !322, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.9.24.copyload = load i64, ptr %i.p, align 8, !noalias !322 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ah = icmp ult i64 %.sroa.9.24.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %.sroa.8.24.copyload, i64 %.sroa.9.24.copyload ; 4 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %.sroa.444.0.copyload, i64 %.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8, !alias.scope !323
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.i, i64 456 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !323
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 464 ; 3 uses
  store i64 -1, ptr %i.ak, align 8, !alias.scope !323
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.12.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.13.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.al = icmp eq i64 %.sroa.646.24.copyload, 0
  %i.am = mul nuw i64 %.sroa.646.24.copyload, 80
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.13.0.i = phi ptr [ %.sroa.444.0.copyload, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.13.343.i, %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ %.sroa.8.24.copyload, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.6.344.i, %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %.sroa.8.24.copyload, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0.245.i, %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !325
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i.i.i, label %.preheader.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not12.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.0.i, %i.ai
  br i1 %.not12.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %bb.n
  %i.ap = phi ptr [ %i.aq, %bb.n ], [ %.sroa.6.0.i, %bb.h ] ; 9 uses
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.527.0.copyload.i = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !327 ; 3 uses
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.628.0.copyload.i = load i64, ptr %.sroa.628.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %.sroa.930.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.930.0.copyload.i = load i64, ptr %.sroa.930.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i64 80, i1 false), !noalias !327
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive9to_static(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b) #30, !noalias !329
  %.sroa.7.0.copyload.off.i = add i64 %.sroa.7.0.copyload.i, -1
  %switch.i = icmp ult i64 %.sroa.7.0.copyload.off.i, -2
  br i1 %switch.i, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.7.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !330
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.527.0.copyload.i) ]
  %i.ar = icmp eq i64 %.sroa.628.0.copyload.i, 0
  br i1 %i.ar, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i16.i, label %.lr.ph.i.i.i.i10.i

.lr.ph.i.i.i.i10.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i15.i
  %.sroa.0.03.i.i.i.i11.i = phi i64 [ %i.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i15.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %.sroa.527.0.copyload.i, i64 %.sroa.0.03.i.i.i.i11.i ; 3 uses
  %i.at = add nuw nsw i64 %.sroa.0.03.i.i.i.i11.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331), !noalias !332
  call void @llvm.experimental.noalias.scope.decl(metadata !333), !noalias !332
  call void @llvm.experimental.noalias.scope.decl(metadata !334), !noalias !332
  %.val.i.i.i.i.i.i.i12.i = load i64, ptr %i.as, align 8, !range !16, !alias.scope !335, !noalias !336, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i.i.i.i.i12.i, 0
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i14.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i10.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val1.i.i.i.i.i.i.i13.i = load ptr, ptr %i.av, align 8, !alias.scope !335, !noalias !336, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i13.i, i64 noundef %.val.i.i.i.i.i.i.i12.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !337
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i14.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i14.i: ; preds = %bb.j, %.lr.ph.i.i.i.i10.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !21, !alias.scope !338, !noalias !336, !noundef !14
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i15.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i14.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field10ValueMatchECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw) #30, !noalias !336
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i15.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i15.i: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i14.i
  %i.az = icmp eq i64 %i.at, %.sroa.628.0.copyload.i
  br i1 %i.az, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i16.i, label %.lr.ph.i.i.i.i10.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i16.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i15.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i
  %i.ba = icmp eq i64 %.sroa.426.0.copyload.i, 0
  br i1 %i.ba, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust.exit.i18.i, label %bb.l

bb.l:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i16.i
  %i.bb = mul nuw i64 %.sroa.426.0.copyload.i, 48
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.527.0.copyload.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !336
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust.exit.i18.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust.exit.i18.i: ; preds = %bb.l, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i16.i
  %.sroa.930.0.copyload.off.i = add i64 %.sroa.930.0.copyload.i, -1
  %switch46.i = icmp ult i64 %.sroa.930.0.copyload.off.i, -2
  br i1 %switch46.i, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit20.i

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust.exit.i18.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.copyload.i, i64 noundef %.sroa.930.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !339
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit20.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit20.i: ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust.exit.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !328
  %i.bc = load i64, ptr %i.c, align 8, !range !18, !noalias !328, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, -2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !328
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.h
  br i1 %i.al, label %.preheader.preheader, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !340
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %bb.o
  %.sroa.6.2.i = phi ptr [ %.sroa.6.0.i, %bb.g ], [ %i.ai, %bb.o ], [ %i.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %i.bd = phi ptr [ %i.bf, %bb.p ], [ %.sroa.13.0.i, %.preheader.preheader ] ; 3 uses
  %i.be = icmp eq ptr %i.bd, %i.aj
  br i1 %i.be, label %_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive9to_static(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd) #30, !noalias !341
  %i.bg = load i64, ptr %i.e, align 8, !range !18, !noalias !325, !noundef !14
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, -2
  br i1 %.not.i.i.i.i.i.i, label %.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread38.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit20.i
  %.sroa.7.8.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !342
  %.sroa.9.8.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.9.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !342
  %.sroa.12.8.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.12.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !342
  %.sroa.13.8.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !342
  %i.bh = load <2 x i64>, ptr %.sroa.10.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !328
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  store i64 %i.bc, ptr %i.e, align 8, !alias.scope !344, !noalias !345
  store i64 %.sroa.7.8.copyload.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !344, !noalias !345
  store ptr %.sroa.9.8.copyload.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !344, !noalias !345
  store <2 x i64> %i.bh, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !344, !noalias !345
  store ptr %.sroa.12.8.copyload.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !344, !noalias !345
  store i64 %.sroa.13.8.copyload.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !344, !noalias !345
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread38.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread38.i: ; preds = %bb.p, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.0.245.i = phi ptr [ %.sroa.0.0.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ null, %bb.p ]
  %.sroa.6.344.i = phi ptr [ %i.aq, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.6.2.i, %bb.p ]
  %.sroa.13.343.i = phi ptr [ %.sroa.13.0.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !325
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.bi = load i64, ptr %i.d, align 8, !range !22, !alias.scope !347, !noalias !348, !noundef !14 ; 3 uses
  %i.bj = load i64, ptr %i.ak, align 8, !range !22, !alias.scope !349, !noalias !350, !noundef !14 ; 2 uses
  %.not.i.i11 = icmp eq i64 %i.bj, -1
  %..i.i = select i1 %.not.i.i11, i64 5, i64 %i.bj
  %.not8.i.i = icmp eq i64 %i.bi, -1
  %.sroa.07.0.i.i = select i1 %.not8.i.i, i64 5, i64 %i.bi
  %i.bk = icmp samesign ugt i64 %..i.i, %.sroa.07.0.i.i
  br i1 %i.bk, label %bb.r, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.r, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread38.i
  %i.bl = load i64, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !351, !noalias !352, !noundef !14 ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 8                   ; 2 uses
  %i.bn = load ptr, ptr %i.ao, align 8, !nonnull !14
  %i.bo = load i64, ptr %i.an, align 8
  %.sink13.i.i.i = select i1 %i.bm, ptr %i.bn, ptr %i.an ; 2 uses
  %.sink12.i.i.i = select i1 %i.bm, i64 %i.bo, i64 %i.bl ; 5 uses
  switch i64 %.sink12.i.i.i, label %.lr.ph.i.i.i [
    i64 0, label %bb.s
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ %i.by, %.lr.ph.i.i.i ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %.sink13.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i
  %i.bq = call noundef range(i8 -1, 2) i8 @_RNvXs6_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveNtB5_15StaticDirectiveNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d) #30, !noalias !353 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i, label %bb.q

.lr.ph.i.i.i:                                     ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.lr.ph.i.i.i
  %.sroa.01.014.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i ], [ %.sink12.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %.sroa.05.013.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ 0, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %i.bs = lshr i64 %.sroa.01.014.i.i.i, 1         ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, %.sroa.05.013.i.i.i ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %.sink12.i.i.i
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %.sink13.i.i.i, i64 %i.bt
  %i.bw = call noundef range(i8 -1, 2) i8 @_RNvXs6_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveNtB5_15StaticDirectiveNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d) #30, !noalias !353
  %i.bx = icmp eq i8 %i.bw, 1
  %i.by = select i1 %i.bx, i64 %.sroa.05.013.i.i.i, i64 %i.bt, !unpredictable !14 ; 2 uses
  %i.bz = sub nuw nsw i64 %.sroa.01.014.i.i.i, %i.bs ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 1
  br i1 %i.ca, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.cb = icmp eq i8 %i.bq, -1
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ule i64 %i.cd, %.sink12.i.i.i
  call void @llvm.assume(i1 %i.ce)
  %.pre.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !354, !noalias !355
  br label %bb.s

bb.r:                                             ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread38.i
  store i64 %i.bi, ptr %i.ak, align 8, !alias.scope !349, !noalias !350
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.s:                                             ; preds = %bb.q, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %i.cf = phi i64 [ %.pre.i.i, %bb.q ], [ %i.bl, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.cd, %bb.q ], [ %.sink12.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 4 uses
  %i.cg = icmp ugt i64 %i.cf, 8
  br i1 %i.cg, label %bb.t, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.ao, align 8, !alias.scope !354, !noalias !355, !nonnull !14, !noundef !14
  %.pre16.i.i = load i64, ptr %i.an, align 8, !alias.scope !356, !noalias !357
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.s, %bb.t
  %i.ci = phi i64 [ %.pre16.i.i, %bb.t ], [ %i.cf, %bb.s ] ; 2 uses
  %.sink12.i.i.i.i = phi ptr [ %i.ch, %bb.t ], [ %i.an, %bb.s ]
  %.sink11.i.i.i.i = phi ptr [ %i.an, %bb.t ], [ %.sroa.4.0..sroa_idx.i6, %bb.s ]
  %.sink.i.i.i.i = phi i64 [ %i.cf, %bb.t ], [ 8, %bb.s ]
  %i.cj = icmp eq i64 %i.ci, %.sink.i.i.i.i
  br i1 %i.cj, label %bb.u, label %bb.v, !prof !23

bb.u:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  call fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.i) #30, !noalias !358
  %i.ck = load ptr, ptr %i.ao, align 8, !alias.scope !356, !noalias !357, !nonnull !14, !noundef !14
  %.pre.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !356, !noalias !357
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.cl = phi i64 [ %.pre.i.i.i, %bb.u ], [ %i.ci, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 4 uses
  %.sroa.07.0.i.i.i = phi ptr [ %i.ck, %bb.u ], [ %.sink12.i.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ]
  %.sroa.04.0.i.i.i = phi ptr [ %i.an, %bb.u ], [ %.sink11.i.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ]
  %i.cm = icmp ugt i64 %.sroa.4.0.i.ph.i.i, %i.cl
  br i1 %i.cm, label %bb.x, label %bb.w, !prof !23

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.07.0.i.i.i, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.co = icmp ult i64 %.sroa.4.0.i.ph.i.i, %i.cl
  br i1 %i.co, label %bb.y, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #37, !noalias !358
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cq = sub nuw i64 %i.cl, %.sroa.4.0.i.ph.i.i
  %i.cr = mul nuw nsw i64 %i.cq, 56
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr nonnull align 8 %i.cn, i64 %i.cr, i1 false), !noalias !358
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.y, %bb.w
  %i.cs = add i64 %i.cl, 1
  store i64 %i.cs, ptr %.sroa.04.0.i.i.i, align 8, !alias.scope !356, !noalias !357
  br label %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i: ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.ct = load i64, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !360, !noalias !361, !noundef !14 ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 8                   ; 2 uses
  %.pre17.i.i = load i64, ptr %i.an, align 8
  %i.cv = select i1 %i.cu, i64 %.pre17.i.i, i64 %i.ct ; 2 uses
  %i.cw = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.cv
  br i1 %i.cw, label %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 164703072086692426) %.sroa.05.0.lcssa.i.i.i, i64 noundef range(i64 0, 164703072086692426) %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #37, !noalias !362
  unreachable

_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i
  %i.cx = load ptr, ptr %i.ao, align 8, !nonnull !14
  %.sink12.i.i10.i.i = select i1 %i.cu, ptr %i.cx, ptr %i.an
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %.sink12.i.i10.i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.da = load i64, ptr %i.cz, align 8, !range !24, !alias.scope !365, !noalias !353, !noundef !14 ; 3 uses
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.dc = icmp eq i64 %i.da, 0
  br i1 %i.dc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !368, !noalias !353, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !369
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !371, !noalias !353, !nonnull !14, !noundef !14 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !371, !noalias !353, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.dh = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.dh, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.dj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.dj = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8, !range !16, !alias.scope !375, !noalias !376, !noundef !14 ; 2 uses
  %i.dk = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.dk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !375, !noalias !376, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !377
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %i.dm = icmp eq i64 %i.dj, %.val1.i.i.i.i
  br i1 %i.dm, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.de, align 8, !range !16, !alias.scope !371, !noalias !353, !noundef !14 ; 2 uses
  %i.dn = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.dn, label %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i
  %i.do = mul nuw i64 %.val2.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !376
  br label %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.ad, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.sink.i.i = phi ptr [ %i.cn, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ %i.cy, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ], [ %i.cy, %bb.ad ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sink.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !325
  br label %bb.g

_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.j, ptr noundef nonnull align 8 dereferenceable(472) %i.i, i64 472, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8, !alias.scope !378
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.h, i64 648 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i12, align 8, !alias.scope !378
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 656 ; 3 uses
  store i64 -1, ptr %i.dp, align 8, !alias.scope !378
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.dq = icmp ult i64 %.sroa.5.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.dq)
  %.idx.i = mul nuw nsw i64 %.sroa.5.0.copyload, 80
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 %.idx.i ; 3 uses
  %i.ds = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.ds, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.lr.ph.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.lr.ph.i: ; preds = %_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.7.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 9 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.lr.ph.i
  %.sroa.42.010.i = phi ptr [ %.sroa.444.0.copyload, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.lr.ph.i ], [ %i.dv, %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.42.010.i, i64 80 ; 3 uses
  %.sroa.03.0.copyload4.i = load i64, ptr %.sroa.42.010.i, align 8, !noalias !380 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.03.0.copyload4.i, -2
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.7.0..sroa.42.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.010.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !381
  store i64 %.sroa.03.0.copyload4.i, ptr %i.a, align 8, !noalias !381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i15, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa.42.8..sroa_idx.i, i64 72, i1 false), !noalias !382
  %i.dw = load i64, ptr %i.dp, align 8, !range !22, !alias.scope !383, !noalias !384, !noundef !14 ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.dw, -1
  %..i.i17 = select i1 %.not.i.i16, i64 5, i64 %i.dw
  %.not8.i.i18 = icmp eq i64 %.sroa.03.0.copyload4.i, -1
  %.sroa.07.0.i.i19 = select i1 %.not8.i.i18, i64 5, i64 %.sroa.03.0.copyload4.i
  %i.dx = icmp samesign ugt i64 %..i.i17, %.sroa.07.0.i.i19
  br i1 %i.dx, label %bb.ag, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.ag, %bb.ae
  %i.dy = load i64, ptr %.sroa.4.0..sroa_idx.i12, align 8, !alias.scope !385, !noalias !386, !noundef !14 ; 3 uses
  %i.dz = icmp ugt i64 %i.dy, 8                   ; 2 uses
  %i.ea = load ptr, ptr %i.du, align 8, !nonnull !14
  %i.eb = load i64, ptr %i.dt, align 8
  %.sink13.i.i.i20 = select i1 %i.dz, ptr %i.ea, ptr %i.dt ; 2 uses
  %.sink12.i.i.i21 = select i1 %i.dz, i64 %i.eb, i64 %i.dy ; 5 uses
  switch i64 %.sink12.i.i.i21, label %.lr.ph.i.i.i37 [
    i64 0, label %bb.ah
    i64 1, label %._crit_edge.i.i.i22
  ]

._crit_edge.i.i.i22:                              ; preds = %.lr.ph.i.i.i37, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.sroa.05.0.lcssa.i.i.i23 = phi i64 [ 0, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ %i.el, %.lr.ph.i.i.i37 ] ; 5 uses
  %i.ec = getelementptr inbounds nuw [80 x i8], ptr %.sink13.i.i.i20, i64 %.sroa.05.0.lcssa.i.i.i23
  %i.ed = call noundef range(i8 -1, 2) i8 @_RNvXs3_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB5_9DirectiveNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a) #30, !noalias !382 ; 2 uses
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i, label %bb.af

.lr.ph.i.i.i37:                                   ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.lr.ph.i.i.i37
  %.sroa.01.014.i.i.i38 = phi i64 [ %i.em, %.lr.ph.i.i.i37 ], [ %.sink12.i.i.i21, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %.sroa.05.013.i.i.i39 = phi i64 [ %i.el, %.lr.ph.i.i.i37 ], [ 0, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %i.ef = lshr i64 %.sroa.01.014.i.i.i38, 1       ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, %.sroa.05.013.i.i.i39 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %.sink12.i.i.i21
  call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [80 x i8], ptr %.sink13.i.i.i20, i64 %i.eg
  %i.ej = call noundef range(i8 -1, 2) i8 @_RNvXs3_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB5_9DirectiveNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a) #30, !noalias !382
  %i.ek = icmp eq i8 %i.ej, 1
  %i.el = select i1 %i.ek, i64 %.sroa.05.013.i.i.i39, i64 %i.eg, !unpredictable !14 ; 2 uses
  %i.em = sub nuw nsw i64 %.sroa.01.014.i.i.i38, %i.ef ; 2 uses
  %i.en = icmp ugt i64 %i.em, 1
  br i1 %i.en, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i22

bb.af:                                            ; preds = %._crit_edge.i.i.i22
  %i.eo = icmp eq i8 %i.ed, -1
  %i.ep = zext i1 %i.eo to i64
  %i.eq = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i23, %i.ep ; 2 uses
  %i.er = icmp ule i64 %i.eq, %.sink12.i.i.i21
  call void @llvm.assume(i1 %i.er)
  %.pre.i.i24 = load i64, ptr %.sroa.4.0..sroa_idx.i12, align 8, !alias.scope !387, !noalias !388
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i64 %.sroa.03.0.copyload4.i, ptr %i.dp, align 8, !alias.scope !383, !noalias !384
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.ah:                                            ; preds = %bb.af, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %i.es = phi i64 [ %.pre.i.i24, %bb.af ], [ %i.dy, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i26 = phi i64 [ %i.eq, %bb.af ], [ %.sink12.i.i.i21, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 4 uses
  %i.et = icmp ugt i64 %i.es, 8
  br i1 %i.et, label %bb.ai, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.du, align 8, !alias.scope !387, !noalias !388, !nonnull !14, !noundef !14
  %.pre16.i.i34 = load i64, ptr %i.dt, align 8, !alias.scope !389, !noalias !390
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.ah, %bb.ai
  %i.ev = phi i64 [ %.pre16.i.i34, %bb.ai ], [ %i.es, %bb.ah ] ; 2 uses
  %.sink12.i.i.i.i27 = phi ptr [ %i.eu, %bb.ai ], [ %i.dt, %bb.ah ]
  %.sink11.i.i.i.i28 = phi ptr [ %i.dt, %bb.ai ], [ %.sroa.4.0..sroa_idx.i12, %bb.ah ]
  %.sink.i.i.i.i29 = phi i64 [ %i.es, %bb.ai ], [ 8, %bb.ah ]
  %i.ew = icmp eq i64 %i.ev, %.sink.i.i.i.i29
  br i1 %i.ew, label %bb.aj, label %bb.ak, !prof !23

bb.aj:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  call fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(664) %i.h) #30, !noalias !391
  %i.ex = load ptr, ptr %i.du, align 8, !alias.scope !389, !noalias !390, !nonnull !14, !noundef !14
  %.pre.i.i.i33 = load i64, ptr %i.dt, align 8, !alias.scope !389, !noalias !390
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.ey = phi i64 [ %.pre.i.i.i33, %bb.aj ], [ %i.ev, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 4 uses
  %.sroa.07.0.i.i.i30 = phi ptr [ %i.ex, %bb.aj ], [ %.sink12.i.i.i.i27, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ]
  %.sroa.04.0.i.i.i31 = phi ptr [ %i.dt, %bb.aj ], [ %.sink11.i.i.i.i28, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ]
  %i.ez = icmp ugt i64 %.sroa.4.0.i.ph.i.i26, %i.ey
  br i1 %i.ez, label %bb.am, label %bb.al, !prof !23

bb.al:                                            ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw [80 x i8], ptr %.sroa.07.0.i.i.i30, i64 %.sroa.4.0.i.ph.i.i26 ; 3 uses
  %i.fb = icmp ult i64 %.sroa.4.0.i.ph.i.i26, %i.ey
  br i1 %i.fb, label %bb.an, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #37, !noalias !391
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  %i.fd = sub nuw i64 %i.ey, %.sroa.4.0.i.ph.i.i26
  %i.fe = mul nuw nsw i64 %i.fd, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr nonnull align 8 %i.fa, i64 %i.fe, i1 false), !noalias !391
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.an, %bb.al
  %i.ff = add i64 %i.ey, 1
  store i64 %i.ff, ptr %.sroa.04.0.i.i.i31, align 8, !alias.scope !389, !noalias !390
  br label %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i: ; preds = %._crit_edge.i.i.i22
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.fg = load i64, ptr %.sroa.4.0..sroa_idx.i12, align 8, !alias.scope !393, !noalias !394, !noundef !14 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, 8                   ; 2 uses
  %.pre17.i.i36 = load i64, ptr %i.dt, align 8
  %i.fi = select i1 %i.fh, i64 %.pre17.i.i36, i64 %i.fg ; 2 uses
  %i.fj = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i23, %i.fi
  br i1 %i.fj, label %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 115292150460684698) %.sroa.05.0.lcssa.i.i.i23, i64 noundef range(i64 0, 115292150460684698) %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #37, !noalias !395
  unreachable

_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i9.i.i
  %i.fk = load ptr, ptr %i.du, align 8, !nonnull !14
  %.sink12.i.i10.i.i35 = select i1 %i.fh, ptr %i.fk, ptr %i.dt
  %i.fl = getelementptr inbounds nuw [80 x i8], ptr %.sink12.i.i10.i.i35, i64 %.sroa.05.0.lcssa.i.i.i23 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(80) %i.fl) #30, !noalias !382
  br label %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.sink.i.i32 = phi ptr [ %i.fl, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ %i.fa, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sink.i.i32, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !381
  %i.fm = icmp eq ptr %i.dv, %i.dr
  br i1 %i.fm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.42.18.i = phi ptr [ %.sroa.444.0.copyload, %_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.dv, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %i.fn = ptrtoint ptr %i.dr to i64
  %i.fo = ptrtoint ptr %.sroa.42.18.i to i64
  %i.fp = sub nuw i64 %i.fn, %i.fo
  %i.fq = udiv exact i64 %i.fp, 80
  %i.fr = icmp eq ptr %i.dr, %.sroa.42.18.i
  br i1 %i.fr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, %.lr.ph.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.ft, %.lr.ph.i.i.i.i ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [80 x i8], ptr %.sroa.42.18.i, i64 %.sroa.0.03.i.i.i.i
  %i.ft = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 dereferenceable(80) %i.fs) #30, !noalias !396
  %i.fu = icmp eq i64 %i.ft, %i.fq
  br i1 %i.fu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %.lr.ph.i.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i
  %i.fv = icmp eq i64 %.sroa.043.0.copyload, 0
  br i1 %i.fv, label %_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtNtNtB8_3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtCsgCecv3eZDcN_5alloc3vec3VecB1j_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.fw = mul nuw i64 %.sroa.043.0.copyload, 80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.444.0.copyload, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !396
  br label %_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtNtNtB8_3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtCsgCecv3eZDcN_5alloc3vec3VecB1j_EECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtNtNtB8_3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtCsgCecv3eZDcN_5alloc3vec3VecB1j_EECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(664) %i.h, i64 664, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.fx, ptr noundef nonnull align 8 dereferenceable(472) %i.j, i64 472, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_12ParsingRules13add_ipv4_ruleNtNtNtCsf3Ta7LF998c_4core3net7ip_addr8Ipv4AddrECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [5 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.03.0.insert.ext.i.i = zext i32 %1 to i40
  %.sroa.03.0.insert.insert.i.i = or disjoint i40 %.sroa.03.0.insert.ext.i.i, 137438953472 ; 2 uses
  store i40 %.sroa.03.0.insert.insert.i.i, ptr %i.d, align 8
  %i.e = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsa_NtCsgF1LWsE3iOj_5ipnet5ipnetNtB5_7Ipv4NetNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !399
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.h, align 8, !noalias !399
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !399
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 24, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !399
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @35, ptr %i.i, align 8, !noalias !399
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.c, ptr %i.j, align 8, !noalias !399
  store i64 0, ptr %i.b, align 8, !noalias !399
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !399
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 24, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !399
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.k, align 8, !noalias !399
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !399
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 41, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !399
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.l, align 8, !noalias !399
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 182, ptr %i.m, align 4, !noalias !399
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #30, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.09.0.copyload.pre = load i40, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.09.0.copyload = phi i40 [ %.sroa.03.0.insert.insert.i.i, %bb.a ], [ %.sroa.09.0.copyload.pre, %bb.b ]
  call fastcc void @_RNvMs4_Cs9YRaEePol5J_7iprangeINtB5_6IpTrieNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i40 %.sroa.09.0.copyload) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_12ParsingRules13add_ipv6_ruleNtNtNtCsf3Ta7LF998c_4core3net7ip_addr8Ipv6AddrECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [17 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false), !alias.scope !410
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i8 -128, ptr %i.e, align 16, !alias.scope !411, !noalias !412
  %i.f = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.g = icmp ult i64 %i.f, 6
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ugt i64 %i.f, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsf_NtCsgF1LWsE3iOj_5ipnet5ipnetNtB5_7Ipv6NetNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !413
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.i, align 8, !noalias !413
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !413
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 24, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !413
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @37, ptr %i.j, align 8, !noalias !413
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.c, ptr %i.k, align 8, !noalias !413
  store i64 0, ptr %i.b, align 8, !noalias !413
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !413
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 24, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !413
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.l, align 8, !noalias !413
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !413
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 41, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !413
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.m, align 8, !noalias !413
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 188, ptr %i.n, align 4, !noalias !413
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #30, !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.45.0.copyload.pre = load i8, ptr %i.e, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.45.0.copyload = phi i8 [ -128, %bb.a ], [ %.sroa.45.0.copyload.pre, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.04.0.copyload = load i128, ptr %i.d, align 16
  call fastcc void @_RNvMs4_Cs9YRaEePol5J_7iprangeINtB5_6IpTrieNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, i128 %.sroa.04.0.copyload, i8 %.sroa.45.0.copyload) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !428
  %i.b = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !428 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34, !noalias !428
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !429
  %i.e = tail call fastcc { ptr, ptr } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBP_3AnyNtNtBR_6marker4SendNtB26_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @66, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68) #30, !noalias !430 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB12_6format13DefaultFieldsEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.c

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !433
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !14, !alias.scope !434, !noalias !435, !nonnull !14
  call void %i.i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #35, !noalias !436, !inline_history !426
  %i.j = load i128, ptr %i.a, align 16, !noalias !433, !noundef !14
  %i.k = icmp eq i128 %i.j, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !433
  br i1 %i.k, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1B_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !invariant.load !14, !alias.scope !431, !noalias !437 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %i.l(ptr noundef nonnull %i.f) #35, !noalias !438, !inline_history !427
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !16, !invariant.load !14, !alias.scope !431, !noalias !437 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB12_6format13DefaultFieldsEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !25, !invariant.load !14, !alias.scope !431, !noalias !437
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #30, !noalias !438
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB12_6format13DefaultFieldsEEECsat9HgdBb3qc_16shadowsocks_rust.exit

end_hunk_0
