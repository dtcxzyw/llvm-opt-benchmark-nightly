Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_complete-34b131410fcb16ec.clap_complete.fbbadca75ff2ea6a-cgu.12?download=true
inline.NumInlined: 65
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtB9_9generator9Generator8generate:bb.a
bb.g:                                             ; preds = %_RNvXs1_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtB9_9generator9Generator12try_generate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i, ptr %i.a, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #14
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.h

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE6expectCslBX3rbrQpFC_13clap_complete.exit: ; preds = %_RNvXs1_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtB9_9generator9Generator12try_generate.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtB9_9generator9Generator9file_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !guid !51 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !9, !noundef !4
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells4bashNtB2_4BashNtNtB6_9generator9Generator9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells6elvishNtB2_6ElvishNtNtB6_9generator9Generator9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells4fishNtB2_4FishNtNtB6_9generator9Generator9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells10powershellNtB2_10PowerShellNtNtB6_9generator9Generator9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells3zshNtB2_3ZshNtNtB6_9generator9Generator9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !52 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !56 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !57, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !58, !nonnull !4, !noundef !4
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !noalias !58, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !57
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 !guid !61 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !62, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !62
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 !guid !68 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !70, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !70, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !70
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !70
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB4_5ShellNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !82 {
_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit:
  %i.a = alloca [80 x i8], align 8                ; 21 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [72 x i8], align 8            ; 20 uses
  %i.c = alloca [80 x i8], align 8                ; 29 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 4), !noalias !83
  %.sroa.0.0.copyload11 = load i64, ptr %i.a, align 8, !noalias !84 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx12, i64 72, i1 false), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %.not = icmp eq i64 %.sroa.0.0.copyload11, 2
  br i1 %.not, label %bb.b, label %bb.a, !prof !8

bb.a:                                             ; preds = %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit
  store i64 %.sroa.0.0.copyload11, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.f = invoke noundef zeroext i1 @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.4, %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.3, %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.2, %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.1, %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15
  unreachable

bb.c:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c) #14
          to label %bb.p unwind label %bb.o

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.m, label %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.1

_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.1: ; preds = %bb.d
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 6), !noalias !85
  %.sroa.0.0.copyload11.1 = load i64, ptr %i.a, align 8, !noalias !86 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx12, i64 72, i1 false), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %.not.1 = icmp eq i64 %.sroa.0.0.copyload11.1, 2
  br i1 %.not.1, label %bb.b, label %bb.e, !prof !8

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.1
  store i64 %.sroa.0.0.copyload11.1, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.h = invoke noundef zeroext i1 @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.m, label %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.2

_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.2: ; preds = %bb.f
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 4), !noalias !87
  %.sroa.0.0.copyload11.2 = load i64, ptr %i.a, align 8, !noalias !88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx12, i64 72, i1 false), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  %.not.2 = icmp eq i64 %.sroa.0.0.copyload11.2, 2
  br i1 %.not.2, label %bb.b, label %bb.g, !prof !8

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.2
  store i64 %.sroa.0.0.copyload11.2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.i = invoke noundef zeroext i1 @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  br i1 %i.i, label %bb.m, label %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.3

_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.3: ; preds = %bb.h
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 10), !noalias !89
  %.sroa.0.0.copyload11.3 = load i64, ptr %i.a, align 8, !noalias !90 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx12, i64 72, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  %.not.3 = icmp eq i64 %.sroa.0.0.copyload11.3, 2
  br i1 %.not.3, label %bb.b, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.3
  store i64 %.sroa.0.0.copyload11.3, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.j = invoke noundef zeroext i1 @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %bb.i
  br i1 %i.j, label %bb.m, label %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.4

_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.4: ; preds = %bb.j
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 3), !noalias !91
  %.sroa.0.0.copyload11.4 = load i64, ptr %i.a, align 8, !noalias !92 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx12, i64 72, i1 false), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91
  %.not.4 = icmp eq i64 %.sroa.0.0.copyload11.4, 2
  br i1 %.not.4, label %bb.b, label %bb.k, !prof !8

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value.exit.4
  store i64 %.sroa.0.0.copyload11.4, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.k = invoke noundef zeroext i1 @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.c

bb.l:                                             ; preds = %bb.k
  br i1 %i.k, label %bb.m, label %.split

.split:                                           ; preds = %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @16, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.lcssa20 = phi i8 [ 0, %bb.d ], [ 1, %bb.f ], [ 2, %bb.h ], [ 3, %bb.j ], [ 4, %bb.l ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.lcssa20, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %.split, %bb.m
  ret void

bb.o:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.p:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 !guid !94 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCslBX3rbrQpFC_13clap_complete.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @17, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !93
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_BF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_BM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecNtNtB7_6string6StringEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E13with_capacityCslBX3rbrQpFC_13clap_complete(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecNtNtB7_6string6StringEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCscdodAO9FK5_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i1 noundef zeroext, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecTNtNtB7_6string6StringBN_BN_EEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E13with_capacityCslBX3rbrQpFC_13clap_complete(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecTNtNtB7_6string6StringBN_BN_EEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTNtNtCscdodAO9FK5_5alloc6string6StringBX_BX_ENvYBW_NtNtBa_3cmp10PartialOrd2ltECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 128102389400760776), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 128102389400760776), i1 noundef zeroext, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECslBX3rbrQpFC_13clap_complete(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslBX3rbrQpFC_13clap_complete(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9file_stem(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECslBX3rbrQpFC_13clap_complete(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells4bashNtB2_4BashNtNtB6_9generator9Generator12try_generate(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells6elvishNtB2_6ElvishNtNtB6_9generator9Generator12try_generate(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells4fishNtB2_4FishNtNtB6_9generator9Generator12try_generate(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells10powershellNtB2_10PowerShellNtNtB6_9generator9Generator12try_generate(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells3zshNtB2_3ZshNtNtB6_9generator9Generator12try_generate(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells4bashNtB2_4BashNtNtB6_9generator9Generator9file_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells6elvishNtB2_6ElvishNtNtB6_9generator9Generator9file_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells4fishNtB2_4FishNtNtB6_9generator9Generator9file_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells10powershellNtB2_10PowerShellNtNtB6_9generator9Generator9file_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells3zshNtB2_3ZshNtNtB6_9generator9Generator9file_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -6345279795505327709}
!4 = !{}
!5 = !{i64 8}
!6 = !{i64 0, i64 2}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i8 0, i8 5}
!10 = !{i64 7266884444563990015}
!11 = !{i64 6247792124787827418}
!12 = !{i64 3463139406669685078}
!13 = !{i64 5547389691456300150}
!14 = !{i64 8216129886503349506}
!15 = !{i64 6318533671950765872}
!16 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{i64 1, i64 536870913}
!19 = !{i64 8171696410500075013}
!20 = distinct !{!20, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECslBX3rbrQpFC_13clap_complete"}
!21 = distinct !{!21, !20, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECslBX3rbrQpFC_13clap_complete: argument 0"}
!22 = distinct !{!22, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str5inner5InnerECslBX3rbrQpFC_13clap_complete"}
!23 = distinct !{!23, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str5inner5InnerECslBX3rbrQpFC_13clap_complete: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECslBX3rbrQpFC_13clap_complete"}
!25 = distinct !{!25, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECslBX3rbrQpFC_13clap_complete: argument 0"}
!26 = !{i64 -8373307262494593645}
!27 = !{!21}
!28 = !{!23}
!29 = !{!23, !21}
!30 = !{!25}
!31 = !{i64 6763828318779613711}
!32 = !{i64 -7711258834998328963}
!33 = !{i64 -7602812102386363481}
!34 = !{i64 0, i64 -9223372036854775807}
!35 = distinct !{!35, i1 true, !"_RINvMs2_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB6_5Shell15from_shell_pathNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBc_"}
!36 = distinct !{!36, !35, !"_RINvMs2_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB6_5Shell15from_shell_pathNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBc_: argument 0"}
!37 = !{i64 4424221983887247419}
!38 = !{!36}
!39 = !{i64 8321779000560509420}
!40 = distinct !{!40, i1 true, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value"}
!41 = distinct !{!41, !40, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 1"}
!42 = !{i64 -7586038346102081825}
!43 = !{!41}
!44 = !{i64 3471522352372252198}
!45 = !{i64 -6652397675281678847}
!46 = distinct !{!46, i1 true, !"_RNvXs1_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtB9_9generator9Generator12try_generate"}
!47 = distinct !{!47, !46, !"_RNvXs1_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtB9_9generator9Generator12try_generate: argument 0"}
!48 = !{i64 1422525191977361053}
!49 = !{!47}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{i64 -2663947963200179389}
!52 = !{i64 -4858933502729686032}
!53 = distinct !{!53, i1 true, !"_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete"}
!54 = distinct !{!54, !53, !"_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete: argument 0"}
!55 = distinct !{!55, !53, !"_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCslBX3rbrQpFC_13clap_complete: argument 1"}
!56 = !{i64 -4828864789371475185}
!57 = !{!54}
!58 = !{!54, !55}
!59 = distinct !{!59, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!60 = distinct !{!60, !59, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!61 = !{i64 -925576193690899910}
!62 = !{!60}
!63 = distinct !{!63, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!64 = distinct !{!64, !63, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!65 = distinct !{!65, !63, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCslBX3rbrQpFC_13clap_complete"}
!67 = distinct !{!67, !66, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCslBX3rbrQpFC_13clap_complete: argument 0"}
!68 = !{i64 5397611555826504704}
!69 = !{!64}
!70 = !{!67, !65}
!71 = distinct !{!71, i1 true, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value"}
!72 = distinct !{!72, !71, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 1"}
!73 = distinct !{!73, !71, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value"}
!75 = distinct !{!75, !74, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 1:It1"}
!76 = distinct !{!76, i1 true, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value"}
!77 = distinct !{!77, !76, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 1:It2"}
!78 = distinct !{!78, i1 true, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value"}
!79 = distinct !{!79, !78, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 1:It3"}
!80 = distinct !{!80, i1 true, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value"}
!81 = distinct !{!81, !80, !"_RNvXs0_NtNtNtCslBX3rbrQpFC_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value: argument 1:It4"}
!82 = !{i64 -8790480695139131757}
!83 = !{!73, !72}
!84 = !{!72}
!85 = !{!73, !75}
!86 = !{!75}
!87 = !{!73, !77}
!88 = !{!77}
!89 = !{!73, !79}
!90 = !{!79}
!91 = !{!73, !81}
!92 = !{!81}
!93 = distinct !{null}
!94 = !{i64 -2227719913393416415}
end_hunk_0
