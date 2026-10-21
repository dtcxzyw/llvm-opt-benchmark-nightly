Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2355
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardjEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish:bb.a
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1945, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardmEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1945, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuarduEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1945, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorTINtNtB4_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedENtB6_17WaitTimeoutResultEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1s_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1945, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_IBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB17_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB17_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !range !3740, !noundef !5 ; 13 uses
  %.not = icmp eq i32 %i.b, -4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !range !3741, !noundef !5 ; 3 uses
  %.not7 = icmp eq i32 %i.d, -2                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.u, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11 = load i64, ptr %i.e, align 8
  %.not.i.i = icmp eq i32 %i.d, -1
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 0, i64 %.val11 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26, %bb.x, %bb.w, %bb.c, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit, %bb.d
  %.sink72 = phi i64 [ %i.aj, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit ], [ 0, %bb.c ], [ %.sroa.0.0.i.i, %bb.d ], [ %i.bf, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26 ], [ %i.au, %bb.x ], [ 0, %bb.ag ], [ %i.bk, %bb.ai ], [ %.sroa.0.0.i.i22.i27.i52, %bb.aj ], [ %.sroa.0.0.i.i.i30.i55, %bb.ah ], [ 0, %bb.w ]
  %.sroa.05.0.sink.shrunk = phi i1 [ %narrow, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit ], [ true, %bb.c ], [ true, %bb.d ], [ %narrow.i31, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26 ], [ true, %bb.x ], [ true, %bb.ag ], [ %i.bm, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ah ], [ true, %bb.w ]
  %.sink = phi i64 [ %i.ak, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit ], [ 0, %bb.c ], [ %.sroa.0.0.i.i, %bb.d ], [ %i.bg, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26 ], [ %i.au, %bb.x ], [ 0, %bb.ag ], [ %i.bl, %bb.ai ], [ %.sroa.0.0.i.i22.i27.i52, %bb.aj ], [ %.sroa.0.0.i.i.i30.i55, %bb.ah ], [ 0, %bb.w ]
  %.sroa.05.0.sink = zext i1 %.sroa.05.0.sink.shrunk to i64
  store i64 %.sink72, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.sink, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not.i = icmp eq i32 %i.b, -3
  %i.j = load ptr, ptr %1, align 8, !alias.scope !3742, !noundef !5 ; 3 uses
  %.not7.i = icmp eq ptr %i.j, null               ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !range !3741, !alias.scope !3742, !noundef !5 ; 5 uses
  %.not.i13.i = icmp eq i32 %i.l, -2              ; 2 uses
  %.not7.i14.i = icmp eq i32 %i.b, -2             ; 4 uses
  br i1 %.not7.i, label %bb.o, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.m, align 8, !alias.scope !3742, !nonnull !5, !noundef !5
  %i.n = ptrtoint ptr %.val12.i to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 2                   ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.f
  br i1 %.not.i13.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not7.i14.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not7.i14.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val15.i.i = load i64, ptr %i.r, align 8, !alias.scope !3743
  %.not.i.i.i.i = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %.val15.i.i ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i

bb.m:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13.i.i = load i64, ptr %i.i, align 8, !alias.scope !3743
  %.not.i.i17.i.i = icmp eq i32 %i.l, -1
  %.sroa.0.0.i.i18.i.i = select i1 %.not.i.i17.i.i, i64 0, i64 %.val13.i.i ; 3 uses
  %.val11.i.i = load i64, ptr %i.s, align 8, !alias.scope !3743
  %.not.i.i19.i.i = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i20.i.i = select i1 %.not.i.i19.i.i, i64 0, i64 %.val11.i.i ; 2 uses
  %i.t = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i18.i.i, i64 %.sroa.0.0.i.i20.i.i)
  %i.u = add i64 %.sroa.0.0.i.i20.i.i, %.sroa.0.0.i.i18.i.i ; 2 uses
  %i.v = icmp uge i64 %i.u, %.sroa.0.0.i.i18.i.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i

bb.n:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !3743
  %.not.i.i21.i.i = icmp eq i32 %i.l, -1
  %.sroa.0.0.i.i22.i.i = select i1 %.not.i.i21.i.i, i64 0, i64 %.val.i.i ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.sink30.i.i = phi i64 [ %i.t, %bb.m ], [ %.sroa.0.0.i.i22.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i, %bb.l ], [ 0, %bb.k ]
  %.9.sink.i.i = phi i1 [ %i.v, %bb.m ], [ true, %bb.n ], [ true, %bb.l ], [ true, %bb.k ]
  %.sink.i.i = phi i64 [ %i.u, %bb.m ], [ %.sroa.0.0.i.i22.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i = load ptr, ptr %i.w, align 8, !alias.scope !3742, !nonnull !5, !noundef !5
  %i.x = ptrtoint ptr %.val10.i to i64
  %i.y = ptrtoint ptr %i.j to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = tail call i64 @llvm.uadd.sat.i64(i64 %.sink30.i.i, i64 %i.aa)
  %i.ac = add i64 %i.aa, %.sink.i.i               ; 2 uses
  %i.ad = icmp uge i64 %i.ac, %.sink.i.i
  %narrow.i = select i1 %.9.sink.i.i, i1 %i.ad, i1 false
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

bb.o:                                             ; preds = %bb.f
  br i1 %.not.i13.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not7.i14.i, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.o
  br i1 %.not7.i14.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val15.i28.i = load i64, ptr %i.ae, align 8, !alias.scope !3744
  %.not.i.i.i29.i = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i.i30.i = select i1 %.not.i.i.i29.i, i64 0, i64 %.val15.i28.i ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

bb.s:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13.i15.i = load i64, ptr %i.i, align 8, !alias.scope !3744
  %.not.i.i17.i16.i = icmp eq i32 %i.l, -1
  %.sroa.0.0.i.i18.i17.i = select i1 %.not.i.i17.i16.i, i64 0, i64 %.val13.i15.i ; 3 uses
  %.val11.i18.i = load i64, ptr %i.af, align 8, !alias.scope !3744
  %.not.i.i19.i19.i = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i20.i20.i = select i1 %.not.i.i19.i19.i, i64 0, i64 %.val11.i18.i ; 2 uses
  %i.ag = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i18.i17.i, i64 %.sroa.0.0.i.i20.i20.i)
  %i.ah = add i64 %.sroa.0.0.i.i20.i20.i, %.sroa.0.0.i.i18.i17.i ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %.sroa.0.0.i.i18.i17.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

bb.t:                                             ; preds = %bb.p
  %.val.i25.i = load i64, ptr %i.i, align 8, !alias.scope !3744
  %.not.i.i21.i26.i = icmp eq i32 %i.l, -1
  %.sroa.0.0.i.i22.i27.i = select i1 %.not.i.i21.i26.i, i64 0, i64 %.val.i25.i ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.g, %bb.h, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i, %bb.q, %bb.r, %bb.s, %bb.t
  %.sink41.i = phi i64 [ %i.ab, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i ], [ %i.q, %bb.h ], [ 0, %bb.q ], [ %i.ag, %bb.s ], [ %.sroa.0.0.i.i22.i27.i, %bb.t ], [ %.sroa.0.0.i.i.i30.i, %bb.r ], [ 0, %bb.g ]
  %.sroa.05.0.sink.shrunk.i = phi i1 [ %narrow.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i ], [ true, %bb.h ], [ true, %bb.q ], [ %i.ai, %bb.s ], [ true, %bb.t ], [ true, %bb.r ], [ true, %bb.g ]
  %.sink.i = phi i64 [ %i.ac, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i ], [ %i.q, %bb.h ], [ 0, %bb.q ], [ %i.ah, %bb.s ], [ %.sroa.0.0.i.i22.i27.i, %bb.t ], [ %.sroa.0.0.i.i.i30.i, %bb.r ], [ 0, %bb.g ] ; 2 uses
  %.val = load i64, ptr %i.h, align 8
  %.not.i.i14 = icmp eq i32 %i.d, -1
  %.sroa.0.0.i.i15 = select i1 %.not.i.i14, i64 0, i64 %.val ; 2 uses
  %i.aj = tail call i64 @llvm.uadd.sat.i64(i64 %.sink41.i, i64 %.sroa.0.0.i.i15)
  %i.ak = add i64 %.sroa.0.0.i.i15, %.sink.i      ; 2 uses
  %i.al = icmp uge i64 %i.ak, %.sink.i
  %narrow = select i1 %.sroa.05.0.sink.shrunk.i, i1 %i.al, i1 false
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57

bb.u:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not.i16 = icmp eq i32 %i.b, -3
  %i.an = load ptr, ptr %1, align 8, !alias.scope !3745, !noundef !5 ; 3 uses
  %.not7.i17 = icmp eq ptr %i.an, null            ; 2 uses
  br i1 %.not.i16, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !range !3741, !alias.scope !3745, !noundef !5 ; 5 uses
  %.not.i13.i42 = icmp eq i32 %i.ap, -2           ; 2 uses
  %.not7.i14.i43 = icmp eq i32 %i.b, -2           ; 4 uses
  br i1 %.not7.i17, label %bb.ae, label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %.not7.i17, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i56 = load ptr, ptr %i.aq, align 8, !alias.scope !3745, !nonnull !5, !noundef !5
  %i.ar = ptrtoint ptr %.val12.i56 to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 2                 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57

bb.y:                                             ; preds = %bb.v
  br i1 %.not.i13.i42, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not7.i14.i43, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  br i1 %.not7.i14.i43, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val15.i.i39 = load i64, ptr %i.av, align 8, !alias.scope !3746
  %.not.i.i.i.i40 = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i.i.i41 = select i1 %.not.i.i.i.i40, i64 0, i64 %.val15.i.i39 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26

bb.ac:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13.i.i20 = load i64, ptr %i.am, align 8, !alias.scope !3746
  %.not.i.i17.i.i21 = icmp eq i32 %i.ap, -1
  %.sroa.0.0.i.i18.i.i22 = select i1 %.not.i.i17.i.i21, i64 0, i64 %.val13.i.i20 ; 3 uses
  %.val11.i.i23 = load i64, ptr %i.aw, align 8, !alias.scope !3746
  %.not.i.i19.i.i24 = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i20.i.i25 = select i1 %.not.i.i19.i.i24, i64 0, i64 %.val11.i.i23 ; 2 uses
  %i.ax = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i18.i.i22, i64 %.sroa.0.0.i.i20.i.i25)
  %i.ay = add i64 %.sroa.0.0.i.i20.i.i25, %.sroa.0.0.i.i18.i.i22 ; 2 uses
  %i.az = icmp uge i64 %i.ay, %.sroa.0.0.i.i18.i.i22
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26

bb.ad:                                            ; preds = %bb.z
  %.val.i.i36 = load i64, ptr %i.am, align 8, !alias.scope !3746
  %.not.i.i21.i.i37 = icmp eq i32 %i.ap, -1
  %.sroa.0.0.i.i22.i.i38 = select i1 %.not.i.i21.i.i37, i64 0, i64 %.val.i.i36 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNcEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit.i26: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink30.i.i27 = phi i64 [ %i.ax, %bb.ac ], [ %.sroa.0.0.i.i22.i.i38, %bb.ad ], [ %.sroa.0.0.i.i.i.i41, %bb.ab ], [ 0, %bb.aa ]
  %.9.sink.i.i28 = phi i1 [ %i.az, %bb.ac ], [ true, %bb.ad ], [ true, %bb.ab ], [ true, %bb.aa ]
  %.sink.i.i29 = phi i64 [ %i.ay, %bb.ac ], [ %.sroa.0.0.i.i22.i.i38, %bb.ad ], [ %.sroa.0.0.i.i.i.i41, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i30 = load ptr, ptr %i.ba, align 8, !alias.scope !3745, !nonnull !5, !noundef !5
  %i.bb = ptrtoint ptr %.val10.i30 to i64
  %i.bc = ptrtoint ptr %i.an to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc
  %i.be = lshr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = tail call i64 @llvm.uadd.sat.i64(i64 %.sink30.i.i27, i64 %i.be)
  %i.bg = add i64 %i.be, %.sink.i.i29             ; 2 uses
  %i.bh = icmp uge i64 %i.bg, %.sink.i.i29
  %narrow.i31 = select i1 %.9.sink.i.i28, i1 %i.bh, i1 false
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57

bb.ae:                                            ; preds = %bb.v
  br i1 %.not.i13.i42, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not7.i14.i43, label %bb.aj, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not7.i14.i43, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val15.i28.i53 = load i64, ptr %i.bi, align 8, !alias.scope !3747
  %.not.i.i.i29.i54 = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i.i30.i55 = select i1 %.not.i.i.i29.i54, i64 0, i64 %.val15.i28.i53 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57

bb.ai:                                            ; preds = %bb.af
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13.i15.i44 = load i64, ptr %i.am, align 8, !alias.scope !3747
  %.not.i.i17.i16.i45 = icmp eq i32 %i.ap, -1
  %.sroa.0.0.i.i18.i17.i46 = select i1 %.not.i.i17.i16.i45, i64 0, i64 %.val13.i15.i44 ; 3 uses
  %.val11.i18.i47 = load i64, ptr %i.bj, align 8, !alias.scope !3747
  %.not.i.i19.i19.i48 = icmp eq i32 %i.b, -1
  %.sroa.0.0.i.i20.i20.i49 = select i1 %.not.i.i19.i19.i48, i64 0, i64 %.val11.i18.i47 ; 2 uses
  %i.bk = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i18.i17.i46, i64 %.sroa.0.0.i.i20.i20.i49)
  %i.bl = add i64 %.sroa.0.0.i.i20.i20.i49, %.sroa.0.0.i.i18.i17.i46 ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %.sroa.0.0.i.i18.i17.i46
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57

bb.aj:                                            ; preds = %bb.af
  %.val.i25.i50 = load i64, ptr %i.am, align 8, !alias.scope !3747
  %.not.i.i21.i26.i51 = icmp eq i32 %i.ap, -1
  %.sroa.0.0.i.i22.i27.i52 = select i1 %.not.i.i21.i26.i51, i64 0, i64 %.val.i25.i50 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources8repeat_n7RepeatNcEB13_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i32 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754)
  %i.b = tail call noundef i64 @_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtB4_13SpecAdvanceBy15spec_advance_byCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1)
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3756, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3756, !nonnull !5, !noundef !5
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.g, ptr %0, align 8, !alias.scope !3756
  %i.h = load i32, ptr %i.c, align 4, !noalias !3755, !noundef !5 ; 4 uses
  %i.i = xor i32 %i.h, 55296
  %i.j = add i32 %i.i, -1114112
  %i.k = icmp ult i32 %i.j, -1112064
  br i1 %i.k, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3757
  store i32 %i.h, ptr %i.a, align 4, !noalias !3757
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1937) #31, !noalias !3755
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %i.h, 1114112
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = add i64 %i.n, %1                         ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.n
  br i1 %i.p, label %bb.f, label %bb.e

_RNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.b, %bb.a, %bb.g
  %.sroa.2.0 = phi i32 [ %i.h, %bb.g ], [ -1, %bb.a ], [ -1, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.o, %bb.g ], [ undef, %bb.a ], [ undef, %bb.b ]
  %i.q = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i32 } %i.q, i32 %.sroa.2.0, 1
  ret { i64, i32 } %i.r

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.o, -1
  br i1 %i.s, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1947) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = add nuw i64 %i.o, 1
  store i64 %i.t, ptr %i.m, align 8
  br label %_RNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish.exit.thread

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1948) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string3padNtB4_3PadNtB6_16StringSubCommand6handle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [80 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  %i.l = alloca [80 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
end_hunk_0
