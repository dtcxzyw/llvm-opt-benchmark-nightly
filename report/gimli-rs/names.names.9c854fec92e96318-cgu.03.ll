Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/names.names.9c854fec92e96318-cgu.03?download=true
inline.NumInlined: 143
inline.NumDeleted: 60
begin_hunk_0_@_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_19NameIndexHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE4nextB2L_:bb.a
  %.sroa.5623.0191228 = phi ptr [ %.sroa.5623.0192, %.thread ], [ %.sroa.0128.sroa.6.0.i, %bb.ah ]
  %.sroa.55.0193226 = phi i8 [ %.sroa.55.0194, %.thread ], [ %.sroa.0128.sroa.4.0.i, %bb.ah ]
  %.sroa.54.0195224 = phi i64 [ %.sroa.54.0196, %.thread ], [ %.sroa.0128.sroa.3.0.i, %bb.ah ]
  %.sroa.53.0197222 = phi i64 [ %.sroa.53.0198, %.thread ], [ %.sroa.0128.sroa.2.0.i, %bb.ah ]
  %.sroa.52.0199220 = phi ptr [ %.sroa.52.0200, %.thread ], [ %.sroa.0128.sroa.0.0.i, %bb.ah ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.ci, align 8, !alias.scope !123
  store i64 0, ptr %i.l, align 8, !alias.scope !123
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE11name_stringB2A_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(496) %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 16               ; 10 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !143
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !146, !noalias !147, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i.i.i = load i8, ptr %i.f, align 8, !range !8, !alias.scope !146, !noalias !147, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !148, !noalias !149, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !148, !noalias !149, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val.i1.i.i = load i8, ptr %i.k, align 8, !range !8, !alias.scope !148, !noalias !149, !noundef !5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !144, !noalias !150
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.val.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !144, !noalias !150
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.val.i1.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 16, !alias.scope !144, !noalias !150
  %i.l = load <2 x ptr>, ptr %i.c, align 8, !alias.scope !151, !noalias !152
  store <2 x ptr> %i.l, ptr %i.b, align 16, !alias.scope !144, !noalias !150
  %i.m = zext i32 %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.o = load i8, ptr %i.n, align 4, !range !12, !alias.scope !142, !noalias !153, !noundef !5 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, %i.m               ; 3 uses
  %i.r = icmp ult i64 %i.j, %i.q
  br i1 %i.r, label %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = sub nuw i64 %i.j, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  store ptr %i.u, ptr %i.s, align 16, !alias.scope !154, !noalias !155, !captures !11
  store i64 %i.t, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !154, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, i8 noundef %i.o), !noalias !143
  %i.v = load i8, ptr %i.a, align 8, !range !6, !noalias !143, !noundef !5 ; 2 uses
  %.not17.i = icmp eq i8 %i.v, -1
  br i1 %.not17.i, label %bb.d, label %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit

_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit.thread: ; preds = %bb.a
  %i.w = ptrtoint ptr %i.h to i64
  br label %bb.c

_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit: ; preds = %bb.b
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx, i64 7, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit, %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit.thread
  %.sroa.0.121 = phi i8 [ 17, %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit.thread ], [ %i.v, %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit ]
  %.sroa.9.120 = phi i64 [ %i.w, %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit.thread ], [ %.sroa.9.0.copyload, %_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE18name_string_offsetB2A_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !143
  store i8 %.sroa.0.121, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.120, ptr %.sroa.515.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 2, ptr %i.x, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !143, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !143
  call void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE7get_strB2w_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE20default_compile_unitB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(496) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 16               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.d = load i32, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !175
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !178, !noalias !179, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i = load i8, ptr %i.i, align 8, !range !8, !alias.scope !178, !noalias !179, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !180, !noalias !181, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !180, !noalias !181, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i1.i.i = load i8, ptr %i.n, align 8, !range !8, !alias.scope !180, !noalias !181, !noundef !5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !176, !noalias !182
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.val.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !176, !noalias !182
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.val.i1.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 16, !alias.scope !176, !noalias !182
  %i.o = load <2 x ptr>, ptr %i.f, align 8, !alias.scope !183, !noalias !184
  store <2 x ptr> %i.o, ptr %i.b, align 16, !alias.scope !176, !noalias !182
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.q = load i8, ptr %i.p, align 4, !range !12, !alias.scope !174, !noalias !185, !noundef !5
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.k, ptr %i.r, align 16, !alias.scope !186, !noalias !187, !captures !11
  store i64 %i.m, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !186, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, i8 noundef %i.q), !noalias !175
  %i.s = load i8, ptr %i.a, align 8, !range !6, !noalias !175, !noundef !5 ; 2 uses
  %.not17.i = icmp eq i8 %i.s, -1
  br i1 %.not17.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2, i64 7, i1 false)
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.63.0.copyload5 = load i64, ptr %.sroa.63.0..sroa_idx4, align 8, !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !175
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.s, ptr %i.t, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !175, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !175
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.w, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.63.0.copyload5.sink = phi i64 [ %i.v, %bb.e ], [ %.sroa.63.0.copyload5, %bb.d ]
  %.sink = phi i64 [ 0, %bb.e ], [ 1, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.63.0.copyload5.sink, ptr %i.x, align 8
  store i64 %.sink, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE3newB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([496 x i8]) align 8 captures(none) dereferenceable(496) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6168 = alloca [16 x i8], align 8         ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 11 uses
  %.sroa.13.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx388, align 8 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8 ; 9 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.29.0.copyload = load i8, ptr %.sroa.29.0..sroa_idx, align 8 ; 9 uses
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 97
  %.sroa.37410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.37410.0.copyload = load ptr, ptr %.sroa.37410.0..sroa_idx, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.69.0.copyload = load i8, ptr %.sroa.69.0..sroa_idx, align 8 ; 10 uses
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.e = load i8, ptr %i.d, align 2, !range !12, !noundef !5 ; 2 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load i32, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, %i.f               ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.l = load i32, ptr %i.k, align 4, !noundef !5 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, %i.f               ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load i32, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.t = load i32, ptr %i.s, align 4, !noundef !5 ; 3 uses
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 4 uses
  %i.w = icmp eq i32 %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 2
  %.sroa.0.0 = select i1 %i.w, i64 0, i64 %i.aa   ; 4 uses
  %i.ab = mul nuw nsw i64 %i.z, %i.f              ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !5
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.37410.0.copyload) ]
  %i.af = icmp ult i64 %.sroa.53.0.copyload, %i.j
  br i1 %i.af, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit.thread, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit.thread: ; preds = %bb.a
  %i.ag = ptrtoint ptr %.sroa.37410.0.copyload to i64
  br label %bb.t

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload) ]
  %i.ah = sub nuw i64 %.sroa.53.0.copyload, %i.j  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.37410.0.copyload, i64 %i.j ; 3 uses
  %i.aj = ptrtoint ptr %.sroa.13.0.copyload to i64 ; 9 uses
  %i.ak = icmp eq i8 %.sroa.69.0.copyload, 2
  br i1 %i.ak, label %bb.t, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit
  %i.al = icmp ult i64 %i.ah, %i.n
  br i1 %i.al, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = sub nuw i64 %i.ah, %i.n                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.n ; 3 uses
  %i.ao = icmp ult i64 %i.am, %i.r
  br i1 %i.ao, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = sub nuw i64 %i.am, %i.r                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.r ; 3 uses
  %i.ar = icmp ult i64 %i.ap, %i.v
  br i1 %i.ar, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = sub nuw i64 %i.ap, %i.v                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.v ; 3 uses
  %i.au = icmp ult i64 %i.as, %.sroa.0.0
  br i1 %i.au, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sub nuw i64 %i.as, %.sroa.0.0           ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0 ; 3 uses
  %i.ax = icmp ult i64 %i.av, %i.ab
  br i1 %i.ax, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = sub nuw i64 %i.av, %i.ab                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ab ; 3 uses
  %i.ba = icmp ult i64 %i.ay, %i.ab
  br i1 %i.ba, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = sub nuw i64 %i.ay, %i.ab                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ab ; 3 uses
  %i.bd = icmp ult i64 %i.bb, %i.ae
  br i1 %i.bd, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.0150.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aj, ptr %.sroa.0150.sroa.7.0..sroa_idx, align 8
  %.sroa.0150.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.21.0.copyload, ptr %.sroa.0150.sroa.8.0..sroa_idx, align 8
  %.sroa.0150.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.29.0.copyload, ptr %.sroa.0150.sroa.9.0..sroa_idx, align 8
  %.sroa.0150.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.bc, ptr %.sroa.0150.sroa.11.0..sroa_idx, align 8
  %.sroa.0150.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ae, ptr %.sroa.0150.sroa.12.0..sroa_idx, align 8
  %.sroa.7151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.sroa.69.0.copyload, ptr %.sroa.7151.0..sroa_idx152, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMsh_NtNtCsi68uqYEhoRA_5gimli4read5namesNtB6_17NameAbbreviations5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEB2P_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b)
  %i.be = load i64, ptr %i.a, align 8, !range !188, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6168)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ae
  %i.bj = sub nuw i64 %i.bb, %i.ae
  %.sroa.4295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4295.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6168)
  %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.0..sroa_idx, i64 7, i1 false)
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77.0..sroa_idx, i64 7, i1 false)
  store i64 %i.be, ptr %0, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.copyload, ptr %.sroa.5173.0..sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.5173.sroa.0.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.5.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.21.0.copyload, ptr %.sroa.5173.sroa.0.sroa.5.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.6.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.29.0.copyload, ptr %.sroa.5173.sroa.0.sroa.6.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.8.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.37410.0.copyload, ptr %.sroa.5173.sroa.0.sroa.8.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.9.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.j, ptr %.sroa.5173.sroa.0.sroa.9.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.69.0.copyload, ptr %.sroa.5173.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.0.copyload, ptr %.sroa.6174.0..sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.aj, ptr %.sroa.6174.sroa.0.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.5.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.21.0.copyload, ptr %.sroa.6174.sroa.0.sroa.5.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.6.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.29.0.copyload, ptr %.sroa.6174.sroa.0.sroa.6.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.8.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ai, ptr %.sroa.6174.sroa.0.sroa.8.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.9.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.n, ptr %.sroa.6174.sroa.0.sroa.9.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sroa.69.0.copyload, ptr %.sroa.6174.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.0.copyload, ptr %.sroa.7175.0..sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.aj, ptr %.sroa.7175.sroa.0.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.5.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.21.0.copyload, ptr %.sroa.7175.sroa.0.sroa.5.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.6.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %.sroa.29.0.copyload, ptr %.sroa.7175.sroa.0.sroa.6.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.8.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.an, ptr %.sroa.7175.sroa.0.sroa.8.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.9.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.r, ptr %.sroa.7175.sroa.0.sroa.9.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %.sroa.69.0.copyload, ptr %.sroa.7175.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sroa.0.0.copyload, ptr %.sroa.8176.0..sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.aj, ptr %.sroa.8176.sroa.0.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.5.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.21.0.copyload, ptr %.sroa.8176.sroa.0.sroa.5.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.6.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %.sroa.29.0.copyload, ptr %.sroa.8176.sroa.0.sroa.6.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.8.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.aq, ptr %.sroa.8176.sroa.0.sroa.8.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.9.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.v, ptr %.sroa.8176.sroa.0.sroa.9.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.sroa.69.0.copyload, ptr %.sroa.8176.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.aj, ptr %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sroa.21.0.copyload, ptr %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.29.0.copyload, ptr %.sroa.9.sroa.0.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.at, ptr %.sroa.9.sroa.0.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0.0, ptr %.sroa.9.sroa.0.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %.sroa.69.0.copyload, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.aj, ptr %.sroa.10.sroa.0.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.21.0.copyload, ptr %.sroa.10.sroa.0.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %.sroa.29.0.copyload, ptr %.sroa.10.sroa.0.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.aw, ptr %.sroa.10.sroa.0.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.ab, ptr %.sroa.10.sroa.0.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %.sroa.69.0.copyload, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %.sroa.0.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.aj, ptr %.sroa.11.sroa.0.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %.sroa.21.0.copyload, ptr %.sroa.11.sroa.0.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 %.sroa.29.0.copyload, ptr %.sroa.11.sroa.0.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.az, ptr %.sroa.11.sroa.0.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.9.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.ab, ptr %.sroa.11.sroa.0.sroa.9.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 %.sroa.69.0.copyload, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %.sroa.0.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %.sroa.13.0.copyload, ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.sroa.21.0.copyload, ptr %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 %.sroa.29.0.copyload, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.bi, ptr %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
end_hunk_0
