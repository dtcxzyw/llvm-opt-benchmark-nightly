Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_gcp-560b30696848f8bf.deltalake_gcp.465a4255beeeefa9-cgu.10?download=true
inline.NumInlined: 80
inline.NumDeleted: 55
begin_hunk_0
@29 = private unnamed_addr constant [5 x i8] c"query", align 1
@30 = private unnamed_addr constant [8 x i8] c"fragment", align 1
@31 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@33 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@34 = private unnamed_addr constant [6 x i8] c"source", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBufNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@37 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs2pqxYH9ZEk8_3std4path7PathBufNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@39 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@41 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@42 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@43 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @44, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error5causeCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2pqxYH9ZEk8_3std2io5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @46, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt }>, align 8
@49 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr @48, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@52 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@53 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@54 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@55 = private unnamed_addr constant [4 x i8] c"None", align 1
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCseo6ZV82fEK1_3url4host4HostReENtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@57 = private unnamed_addr constant [4 x i8] c"Some", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRReNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRtNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@60 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/url-2.5.8/src/lib.rs\00", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"Y\00\00\00\00\00\00\00H\0B\00\00\0B\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"Y\00\00\00\00\00\00\00O\0B\00\00\0B\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8
@64 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@65 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7138977279839204526 to ptr), ptr inttoptr (i64 -8957275379254221844 to ptr) }>, align 8
@66 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6180351501431046636 to ptr), ptr inttoptr (i64 2058528345871583318 to ptr) }>, align 8
@67 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2699011438706630775 to ptr), ptr inttoptr (i64 -4576157216679854341 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %3, ptr %i.c, align 8
  %.not = icmp ugt i64 %2, %3
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not34 = icmp ugt i64 %3, %i.g
  br i1 %.not34, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %3, %2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !3
  tail call void %i.l(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.m, ptr noundef %i.o, i64 noundef %i.g)
  %i.p = sub i64 %3, %2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !3
  %i.v = getelementptr i8, ptr %i.u, i64 %2
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr i8, ptr null, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.z, align 8
  store ptr @5, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i64 [ 0, %bb.g ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseBC_ECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val79 = load i64, ptr %i.i, align 8, !noundef !3 ; 12 uses
  %i.j = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val79, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.b unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

.body:                                            ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.split266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.iv, %bb.cb ], [ %lpad.loopexit.split-lp438, %.split266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %1) #18
          to label %common.resume unwind label %bb.cm

bb.b:                                             ; preds = %bb.a
  %i.k = sext i1 %i.j to i64
  %.sroa.7.0 = add i64 %.val79, %i.k              ; 3 uses
  %.sroa.0.0.idx = zext i1 %i.j to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.idx ; 3 uses
  %i.l = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.535.0..sroa_idx, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.h unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.e:                                             ; preds = %bb.by, %bb.cl, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.br, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ii, %bb.br ], [ %i.o, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.d
  %i.q = sext i1 %i.n to i64
  %spec.select = add i64 %.sroa.7.0, %i.q         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %spec.select, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %.sroa.036.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.036.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.036.sroa.4.0.copyload = load i64, ptr %.sroa.036.sroa.4.0..sroa_idx, align 8 ; 29 uses
  %.sroa.036.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.036.sroa.6.0.copyload = load i64, ptr %.sroa.036.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.036.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.036.sroa.7.0.copyload = load i64, ptr %.sroa.036.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.036.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.036.sroa.8.0.copyload = load i64, ptr %.sroa.036.sroa.8.0..sroa_idx, align 8
  %.sroa.036.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.036.sroa.10.0.copyload = load i64, ptr %.sroa.036.sroa.10.0..sroa_idx, align 8
  %.sroa.036.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.036.sroa.12.0.copyload = load ptr, ptr %.sroa.036.sroa.12.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 18 uses
  %.sroa.036.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.036.sroa.13.0.copyload = load i64, ptr %.sroa.036.sroa.13.0..sroa_idx, align 8 ; 57 uses
  %.sroa.036.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.036.sroa.14.0.copyload = load ptr, ptr %.sroa.036.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.036.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.036.sroa.15.0.copyload = load i64, ptr %.sroa.036.sroa.15.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = trunc nuw i64 %.sroa.036.sroa.0.0.copyload to i1
  %i.s = add nsw i64 %.sroa.036.sroa.15.0.copyload, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  br i1 %i.r, label %.split.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %i.u = and i64 %.sroa.036.sroa.6.0.copyload, 65536
  %.sroa.9110.sroa.10127.0.extract.trunc.not = icmp eq i64 %i.u, 0
  %.sroa.9110.sroa.0.0.extract.trunc = trunc i64 %.sroa.036.sroa.6.0.copyload to i1
  br i1 %.sroa.9110.sroa.10127.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %.sink.split.i.peel

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.v = trunc i64 %.sroa.036.sroa.6.0.copyload to i1 ; 2 uses
  %i.w = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  br i1 %i.w, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.peel, label %bb.k, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.j
  %i.x = icmp eq i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload
  br i1 %i.x, label %bb.l, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.036.sroa.4.0.copyload
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !32, !noalias !33, !noundef !3
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.036.sroa.4.0.copyload ; 4 uses
  %i.ac = icmp samesign eq i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload
  br i1 %i.ac, label %.loopexit19.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %i.ab, align 1, !noalias !34, !noundef !3 ; 5 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.n, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel: ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = and i8 %i.ad, 31
  %i.ah = zext nneg i8 %i.ag to i32               ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 1
  %i.aj = icmp samesign ne i64 %i.ai, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.af, align 1, !noalias !34, !noundef !3
  %i.al = shl nuw nsw i32 %i.ah, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32               ; 2 uses
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel, label %bb.o

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ar = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 2
  %i.as = icmp samesign ne i64 %i.ar, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !34, !noundef !3
  %i.au = shl nuw nsw i32 %i.an, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw            ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ah, 12
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ad, -17
  br i1 %i.ba, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i.peel, label %bb.o

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bc = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 3
  %i.bd = icmp samesign ne i64 %i.bc, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bb, align 1, !noalias !34, !noundef !3
  %i.bf = shl nuw nsw i32 %i.ah, 18
  %i.bg = and i32 %i.bf, 1835008
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i8 %i.be, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = zext nneg i8 %i.ad to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.az, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel ], [ %i.bl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i.peel ], [ %i.ao, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel ], [ %i.bm, %bb.n ] ; 4 uses
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br i1 %i.v, label %.sink.split.i.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bo, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bq, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.q ], [ %..i.i.peel.i.peel, %bb.r ], [ 1, %bb.p ]
  %i.br = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.036.sroa.4.0.copyload ; 23 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.peel = icmp ult i64 %i.br, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.u, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.t
  %i.bt = icmp eq i64 %i.br, %.sroa.036.sroa.13.0.copyload
  br i1 %i.bt, label %bb.v, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !32, !noalias !35, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.i.peel, %bb.s
  %i.bx = icmp samesign eq i64 %i.br, %.sroa.036.sroa.13.0.copyload
  br i1 %i.bx, label %.sink.split.i.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !36, !noundef !3 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.sink.split.i.peel, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel: ; preds = %bb.w
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ci)
  br label %.sink.split.i.peel

.loopexit19.i.peel:                               ; preds = %bb.l
  br i1 %i.v, label %.sink.split.i.peel, label %bb.x

bb.x:                                             ; preds = %.loopexit19.i.peel
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.x, %.loopexit19.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel, %bb.w, %bb.v, %bb.o, %.preheader.i.i.preheader
  %.sroa.9110.sroa.0.4.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.peel ], [ false, %bb.o ], [ false, %bb.v ], [ %.sroa.9110.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.w ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %.sroa.51.2.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.peel ], [ false, %bb.o ], [ false, %bb.v ], [ true, %.preheader.i.i.preheader ], [ false, %bb.w ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.x ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.o ], [ %.sroa.036.sroa.13.0.copyload, %bb.v ], [ 0, %.preheader.i.i.preheader ], [ %i.br, %bb.w ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.x ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.o ], [ %.sroa.036.sroa.13.0.copyload, %bb.v ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.br, %bb.w ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %spec.select.pn.peel = phi i64 [ %spec.select, %bb.x ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.o ], [ %.sroa.036.sroa.13.0.copyload, %bb.v ], [ %spec.select, %.preheader.i.i.preheader ], [ %i.br, %bb.w ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cj = icmp eq i64 %spec.select.pn.peel, 0
  br i1 %i.cj, label %.split261.us, label %bb.y

bb.y:                                             ; preds = %.sink.split.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %spec.select.pn.peel)
          to label %bb.z unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.ck = load i64, ptr %i.f, align 8, !range !37, !noundef !3
  %.not77.peel = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not77.peel, label %bb.aa, label %.split264.us

bb.aa:                                            ; preds = %bb.z
  %.sroa.0147.0.copyload.peel = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.cl = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0147.0.copyload.peel, ptr %i.g, align 8
  store <2 x i64> %i.cl, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.cm = icmp eq ptr %.sroa.0147.0.copyload.peel, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel unwind label %.split266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.peel, label %.thread, label %.preheader.i.i

.split.us:                                        ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.sroa.14.0.copyload) ]
  %i.cn = sub i64 %.sroa.036.sroa.15.0.copyload, %.sroa.036.sroa.6.0.copyload
  %umax49.i98.us = tail call i64 @llvm.umax.i64(i64 %.sroa.036.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload)
  %i.co = add i64 %.sroa.036.sroa.4.0.copyload, -1 ; 2 uses
  %.first_iter = icmp ult i64 %i.co, %.sroa.036.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not192.us = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %exitcond.not.i100.us392.not = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.15.0.copyload
  %invariant.op456 = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %.not192.us395 = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us, %.split.us
  %.sroa.19.0238.us = phi i64 [ %.sroa.036.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us ] ; 3 uses
  %.sroa.31114.0237.us = phi i64 [ %.sroa.036.sroa.10.0.copyload, %.split.us ], [ %.sroa.31114.2.us, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us ] ; 3 uses
  %.sroa.41.0236.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us ] ; 7 uses
  %i.cp = icmp eq i64 %.sroa.31114.0237.us, -1
  %i.cq = add i64 %.sroa.19.0238.us, %i.s         ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %.sroa.036.sroa.13.0.copyload ; 2 uses
  br i1 %i.cp, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  br i1 %i.cr, label %.lr.ph.i.us, label %.sink.split.i.us

.lr.ph.i.us:                                      ; preds = %bb.ad, %.sink.split.i87.us
  %i.cs = phi i64 [ %.sink.i.us, %.sink.split.i87.us ], [ %.sroa.31114.0237.us, %bb.ad ] ; 3 uses
  %i.ct = phi i64 [ %i.dw, %.sink.split.i87.us ], [ %i.cq, %bb.ad ]
  %i.cu = phi i64 [ %.ph71.i.us, %.sink.split.i87.us ], [ %.sroa.19.0238.us, %bb.ad ] ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !38, !noundef !3
  %i.cx = and i8 %i.cw, 63
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %.sroa.036.sroa.7.0.copyload
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.cs, i64 %.sroa.036.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload)
  %exitcond.not.i.us387.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.036.sroa.15.0.copyload
  br i1 %exitcond.not.i.us387.not, label %.lr.ph, label %.preheader193.us.preheader

bb.af:                                            ; preds = %bb.ag
  %i.dc = add nuw i64 %.sroa.02.0.i.us388, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.dc, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader193.us.preheader, label %.lr.ph

.preheader193.us.preheader:                       ; preds = %bb.af, %bb.ae
  %i.dd = icmp ult i64 %i.cs, %.sroa.036.sroa.4.0.copyload
  br i1 %i.dd, label %.lr.ph390, label %.preheader193.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.02.0.i.us388 = phi i64 [ %i.dc, %bb.af ], [ %.sroa.0.0.i.i.us, %bb.ae ] ; 4 uses
  %i.de = add i64 %.sroa.02.0.i.us388, %i.cu      ; 2 uses
  %i.df = icmp ult i64 %i.de, %.sroa.036.sroa.13.0.copyload
  br i1 %i.df, label %bb.ag, label %.split242.us

bb.ag:                                            ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i.us388
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !39, !noundef !3
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !38, !noundef !3
  %.not21.i.us = icmp eq i8 %i.dh, %i.dj
  br i1 %.not21.i.us, label %bb.af, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.reass.reass = add i64 %i.cu, %invariant.op
  %i.dk = add i64 %.reass.reass, %.sroa.02.0.i.us388
  br label %.sink.split.i87.us

.preheader193.us:                                 ; preds = %bb.aj
  %i.dl = icmp ult i64 %i.cs, %i.dm
  br i1 %i.dl, label %.lr.ph390, label %.preheader193.us.preheader._crit_edge

.lr.ph390:                                        ; preds = %.preheader193.us.preheader, %.preheader193.us
  %.sroa.2.0.i.us389 = phi i64 [ %i.dm, %.preheader193.us ], [ %.sroa.036.sroa.4.0.copyload, %.preheader193.us.preheader ]
  %i.dm = add i64 %.sroa.2.0.i.us389, -1          ; 6 uses
  %i.dn = icmp ult i64 %i.dm, %.sroa.036.sroa.15.0.copyload
  br i1 %i.dn, label %bb.ai, label %.split251.us.invoke

bb.ai:                                            ; preds = %.lr.ph390
  %i.do = add i64 %i.dm, %i.cu                    ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.036.sroa.13.0.copyload
  br i1 %i.dp, label %bb.aj, label %.split251.us.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !39, !noundef !3
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !38, !noundef !3
  %.not.i88.us = icmp eq i8 %i.dr, %i.dt
  br i1 %.not.i88.us, label %.preheader193.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = add i64 %i.cu, %.sroa.036.sroa.6.0.copyload
  br label %.sink.split.i87.us

bb.al:                                            ; preds = %.lr.ph.i.us
  %i.dv = add i64 %i.cu, %.sroa.036.sroa.15.0.copyload
  br label %.sink.split.i87.us

.sink.split.i87.us:                               ; preds = %bb.al, %bb.ak, %bb.ah
  %.sink.i.us = phi i64 [ %i.cn, %bb.ak ], [ 0, %bb.ah ], [ 0, %bb.al ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.du, %bb.ak ], [ %i.dk, %bb.ah ], [ %i.dv, %bb.al ] ; 2 uses
  %i.dw = add i64 %.ph71.i.us, %i.s               ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.036.sroa.13.0.copyload
  br i1 %i.dx, label %.lr.ph.i.us, label %.sink.split.i.us

.preheader193.us.preheader._crit_edge:            ; preds = %.preheader193.us.preheader, %.preheader193.us
  %i.dy = add i64 %i.cu, %.sroa.036.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

bb.am:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  br i1 %i.cr, label %.lr.ph.i95.us, label %.sink.split.i.us

.lr.ph.i95.us:                                    ; preds = %bb.am, %bb.at
  %i.dz = phi i64 [ %i.ez, %bb.at ], [ %i.cq, %bb.am ]
  %i.ea = phi i64 [ %i.ey, %bb.at ], [ %.sroa.19.0238.us, %bb.am ] ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !40, !noundef !3
  %i.ed = and i8 %i.ec, 63
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %.sroa.036.sroa.7.0.copyload
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.as, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i95.us
  br i1 %exitcond.not.i100.us392.not, label %bb.ap, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.aq
  %i.ei = add nuw i64 %.sroa.02.0.i99.us400, 1    ; 2 uses
  %exitcond.not.i100.us = icmp eq i64 %i.ei, %umax49.i98.us
  br i1 %exitcond.not.i100.us, label %.preheader.us.preheader, label %bb.ap

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph397

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not192.us395, label %.preheader.us.preheader._crit_edge, label %.lr.ph394

.preheader.us.preheader.a:                        ; preds = %bb.an
  %.not192.us.us = icmp eq i64 %2, 0
  br i1 %.not192.us.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph394

.lr.ph394:                                        ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i99.us393 = phi i64 [ %2, %.preheader.us.preheader.a ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.us.us.preheader ]
  %2 = add i64 %.sroa.02.0.i99.us393, -1          ; 4 uses
  %i.ej = add i64 %2, %i.ea                       ; 3 uses
  %i.ek = icmp ult i64 %i.ej, %.sroa.036.sroa.13.0.copyload
  br i1 %i.ek, label %bb.an, label %.split251.us.invoke

bb.an:                                            ; preds = %.lr.ph394
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %2
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !41, !noundef !3
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.ej
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !40, !noundef !3
  %.not21.i102.us.a = icmp eq i8 %i.em, %i.eo
  br i1 %.not21.i102.us.a, label %.preheader.us.preheader.a, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = add i64 %.sroa.036.sroa.6.0.copyload, %i.ea
  br label %bb.at

.lr.ph397:                                        ; preds = %.preheader.us.preheader
  br i1 %.not192.us, label %.preheader.us.preheader._crit_edge, label %.split251.us.invoke

bb.ap:                                            ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i99.us400 = phi i64 [ %i.ei, %.preheader ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.eq = add i64 %.sroa.02.0.i99.us400, %i.ea    ; 2 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.036.sroa.13.0.copyload
  br i1 %i.er, label %bb.aq, label %.split251.us

bb.aq:                                            ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i99.us400
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !41, !noundef !3
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !40, !noundef !3
  %.not.i104.us = icmp eq i8 %i.et, %i.ev
  br i1 %.not.i104.us, label %.preheader, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.reass362.reass = add i64 %i.ea, %invariant.op456
  %i.ew = add i64 %.reass362.reass, %.sroa.02.0.i99.us400
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph.i95.us
  %i.ex = add i64 %i.ea, %.sroa.036.sroa.15.0.copyload
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao, %bb.ar
  %i.ey = phi i64 [ %i.ew, %bb.ar ], [ %i.ex, %bb.as ], [ %i.ep, %bb.ao ] ; 2 uses
  %i.ez = add i64 %i.ey, %i.s                     ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %.sroa.036.sroa.13.0.copyload
  br i1 %i.fa, label %.lr.ph.i95.us, label %.sink.split.i.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a, %.lr.ph397
  %i.fb = add i64 %i.ea, %.sroa.036.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.sink.split.i87.us, %bb.at, %.preheader.us.preheader._crit_edge, %bb.am, %.preheader193.us.preheader._crit_edge, %bb.ad
  %.sroa.51.2.us = phi i1 [ false, %.preheader193.us.preheader._crit_edge ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %bb.at ], [ true, %bb.ad ], [ true, %bb.am ], [ true, %.sink.split.i87.us ]
  %.sroa.41.2.us = phi i64 [ %i.dy, %.preheader193.us.preheader._crit_edge ], [ %i.fb, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0236.us, %bb.at ], [ %.sroa.41.0236.us, %bb.ad ], [ %.sroa.41.0236.us, %bb.am ], [ %.sroa.41.0236.us, %.sink.split.i87.us ]
  %.sroa.31114.2.us = phi i64 [ 0, %.preheader193.us.preheader._crit_edge ], [ -1, %.preheader.us.preheader._crit_edge ], [ -1, %bb.at ], [ %.sroa.31114.0237.us, %bb.ad ], [ -1, %bb.am ], [ %.sink.i.us, %.sink.split.i87.us ]
  %.sroa.19.2.us = phi i64 [ %i.dy, %.preheader193.us.preheader._crit_edge ], [ %i.fb, %.preheader.us.preheader._crit_edge ], [ %.sroa.036.sroa.13.0.copyload, %bb.at ], [ %.sroa.036.sroa.13.0.copyload, %bb.ad ], [ %.sroa.036.sroa.13.0.copyload, %bb.am ], [ %.sroa.036.sroa.13.0.copyload, %.sink.split.i87.us ]
  %spec.select.pn.us = phi i64 [ %i.cu, %.preheader193.us.preheader._crit_edge ], [ %i.ea, %.preheader.us.preheader._crit_edge ], [ %spec.select, %bb.at ], [ %spec.select, %bb.ad ], [ %spec.select, %bb.am ], [ %spec.select, %.sink.split.i87.us ] ; 2 uses
  %i.fc = icmp eq i64 %spec.select.pn.us, %.sroa.41.0236.us
  br i1 %i.fc, label %.split261.us, label %bb.au

bb.au:                                            ; preds = %.sink.split.i.us
  %.sroa.4.1.i.us = sub nuw i64 %spec.select.pn.us, %.sroa.41.0236.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0236.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
          to label %bb.av unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %i.fd = load i64, ptr %i.f, align 8, !range !37, !noundef !3
  %.not77.us = icmp eq i64 %i.fd, -9223372036854775808
  br i1 %.not77.us, label %bb.aw, label %.split264.us

bb.aw:                                            ; preds = %bb.av
  %.sroa.0147.0.copyload.us = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.fe = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0147.0.copyload.us, ptr %i.g, align 8
  store <2 x i64> %i.fe, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.ff = icmp eq ptr %.sroa.0147.0.copyload.us, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.ff, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us unwind label %.split266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.us, label %.thread, label %bb.ac

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us, %bb.au, %bb.a, %bb.d, %bb.h, %.thread, %.split261.us, %.loopexit.i, %.split251.us.invoke, %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.bu, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader.i.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.5.0239 = phi i64 [ %.sroa.5.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.5.5.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel ] ; 15 uses
  %.sroa.41.0236 = phi i64 [ %.sroa.41.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.41.2.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel ] ; 4 uses
  %.sroa.9110.sroa.0.0234 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.9110.sroa.0.4.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel ] ; 2 uses
  %i.fg = icmp eq i64 %.sroa.5.0239, 0
  br i1 %i.fg, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0239, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.az, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.ay
  %i.fh = icmp eq i64 %.sroa.5.0239, %.sroa.036.sroa.13.0.copyload
  br i1 %i.fh, label %bb.ba, label %.loopexit.i

bb.az:                                            ; preds = %bb.ay
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0239
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !32, !noalias !33, !noundef !3
  %i.fk = icmp sgt i8 %i.fj, -65
  br i1 %i.fk, label %bb.ba, label %.loopexit.i

bb.ba:                                            ; preds = %bb.az, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0239 ; 4 uses
  %i.fm = icmp samesign eq i64 %.sroa.5.0239, %.sroa.036.sroa.13.0.copyload
  br i1 %i.fm, label %.loopexit19.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fn = load i8, ptr %i.fl, align 1, !noalias !34, !noundef !3 ; 5 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %bb.bc, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i: ; preds = %bb.bb
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = and i8 %i.fn, 31
  %i.fr = zext nneg i8 %i.fq to i32               ; 3 uses
  %i.fs = add nuw nsw i64 %.sroa.5.0239, 1
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fp, align 1, !noalias !34, !noundef !3
  %i.fv = shl nuw nsw i32 %i.fr, 6
  %i.fw = and i8 %i.fu, 63
  %i.fx = zext nneg i8 %i.fw to i32               ; 2 uses
  %i.fy = or disjoint i32 %i.fv, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fz, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i, label %bb.bd

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gb = add nuw nsw i64 %.sroa.5.0239, 2
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !34, !noundef !3
  %i.ge = shl nuw nsw i32 %i.fx, 6
  %i.gf = and i8 %i.gd, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg            ; 2 uses
  %i.gi = shl nuw nsw i32 %i.fr, 12
  %i.gj = or disjoint i32 %i.gh, %i.gi
  %i.gk = icmp samesign ugt i8 %i.fn, -17
  br i1 %i.gk, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i, label %bb.bd

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.gm = add nuw nsw i64 %.sroa.5.0239, 3
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i8, ptr %i.gl, align 1, !noalias !34, !noundef !3
  %i.gp = shl nuw nsw i32 %i.fr, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gh, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gw = zext nneg i8 %i.fn to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i ], [ %i.gv, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i ], [ %i.fy, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i ], [ %i.gw, %bb.bc ] ; 4 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.gx)
  br i1 %.sroa.9110.sroa.0.0234, label %.sink.split.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gy, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gz, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ha, i64 3, i64 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.bf ], [ %..i.i.peel.i, %bb.bg ], [ 1, %bb.be ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0239 ; 23 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not.i.i.i.i = icmp ult i64 %i.hb, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.bj, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.bi
  %i.hd = icmp eq i64 %i.hb, %.sroa.036.sroa.13.0.copyload
  br i1 %i.hd, label %bb.bk, label %.loopexit.i

bb.bj:                                            ; preds = %bb.bi
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !32, !noalias !35, !noundef !3
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.bk, label %.loopexit.i

bb.bk:                                            ; preds = %bb.bj, %.split.i.i.i.i, %bb.bh
  %i.hh = icmp samesign eq i64 %i.hb, %.sroa.036.sroa.13.0.copyload
  br i1 %i.hh, label %.sink.split.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !36, !noundef !3 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %.sink.split.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i: ; preds = %bb.bl
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hs)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.bj, %.split.i.i.i.i, %bb.az, %.split.i.i.i.peel.i, %bb.u, %.split.i.i.i.i.peel, %bb.k, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.036.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.k ], [ %i.br, %.split.i.i.i.i.peel ], [ %i.br, %bb.u ], [ %i.hb, %bb.bj ], [ %i.hb, %.split.i.i.i.i ], [ %.sroa.5.0239, %bb.az ], [ %.sroa.5.0239, %.split.i.i.i.peel.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %.sroa.036.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #20
          to label %.noexc unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit.i
  unreachable

.loopexit19.i:                                    ; preds = %bb.ba
  br i1 %.sroa.9110.sroa.0.0234, label %.sink.split.i, label %bb.bm

.split251.us:                                     ; preds = %bb.ap
  %i.ht = add i64 %i.ea, %.sroa.036.sroa.4.0.copyload
  %umax.i101 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, i64 %i.ht)
  br label %.split251.us.invoke

.split251.us.invoke:                              ; preds = %.lr.ph397, %bb.ai, %.lr.ph390, %.lr.ph394, %.split242.us, %.split251.us
  %i.hu = phi i64 [ %umax.i101, %.split251.us ], [ %i.do, %bb.ai ], [ %i.ej, %.lr.ph394 ], [ %umax.i, %.split242.us ], [ %i.dm, %.lr.ph390 ], [ %i.co, %.lr.ph397 ]
  %i.hv = phi i64 [ %.sroa.036.sroa.13.0.copyload, %.split251.us ], [ %.sroa.036.sroa.13.0.copyload, %bb.ai ], [ %.sroa.036.sroa.13.0.copyload, %.lr.ph394 ], [ %.sroa.036.sroa.13.0.copyload, %.split242.us ], [ %.sroa.036.sroa.15.0.copyload, %.lr.ph390 ], [ %.sroa.036.sroa.15.0.copyload, %.lr.ph397 ]
  %i.hw = phi ptr [ @10, %.split251.us ], [ @9, %bb.ai ], [ @9, %.lr.ph394 ], [ @10, %.split242.us ], [ @8, %.lr.ph390 ], [ @8, %.lr.ph397 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef range(i64 0, -9223372036854775808) %i.hv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hw) #20
          to label %.split251.us.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split251.us.cont:                                ; preds = %.split251.us.invoke
  unreachable

.split242.us:                                     ; preds = %.lr.ph
  %i.hx = add i64 %i.cu, %.sroa.0.0.i.i.us
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, i64 %i.hx)
  br label %.split251.us.invoke

bb.bm:                                            ; preds = %.loopexit19.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i, %bb.bl, %bb.bk, %bb.bd, %.loopexit19.i, %bb.bm
  %.sroa.51.2 = phi i1 [ true, %bb.bm ], [ false, %.loopexit19.i ], [ false, %bb.bd ], [ false, %bb.bk ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i ], [ false, %bb.bl ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.0236, %bb.bm ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0239, %bb.bd ], [ %.sroa.036.sroa.13.0.copyload, %bb.bk ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i ], [ %i.hb, %bb.bl ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i ]
  %.sroa.5.5 = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.bm ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0239, %bb.bd ], [ %.sroa.036.sroa.13.0.copyload, %bb.bk ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i ], [ %i.hb, %bb.bl ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i ]
  %spec.select.pn = phi i64 [ %spec.select, %bb.bm ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0239, %bb.bd ], [ %.sroa.036.sroa.13.0.copyload, %bb.bk ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i ], [ %i.hb, %bb.bl ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i ], [ %i.hb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i ] ; 2 uses
  %i.hy = icmp eq i64 %spec.select.pn, %.sroa.41.0236
  br i1 %i.hy, label %.split261.us, label %bb.bu

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %spec.select, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bn unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bn:                                            ; preds = %.thread
  %i.hz = load i64, ptr %i.d, align 8, !range !42, !noundef !3
  %i.ia = trunc nuw i64 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !range !37, !noundef !3 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ia, label %bb.bo, label %bb.bp, !prof !4

bb.bo:                                            ; preds = %bb.bn
  %i.ie = load i64, ptr %i.id, align 8
  br label %.invoke

bb.bp:                                            ; preds = %bb.bn
  %i.if = load ptr, ptr %i.id, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ig = icmp ule i64 %spec.select, %i.ic
  call void @llvm.assume(i1 %i.ig)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not76 = icmp eq i64 %spec.select, 0
  br i1 %.not76, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bt, %bb.bp
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ic, ptr %i.ih, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.if, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull align 1 %.sroa.0.0, i64 %spec.select, i1 false)
  br label %bb.bq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.bq, %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

.split261.us:                                     ; preds = %.sink.split.i.peel, %.sink.split.i, %.sink.split.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val79, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bu:                                            ; preds = %.sink.split.i
  %.sroa.4.1.i = sub nuw i64 %spec.select.pn, %.sroa.41.0236
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
          to label %bb.ca unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bv:                                            ; preds = %.split261.us
  %i.ik = load i64, ptr %i.c, align 8, !range !42, !noundef !3
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !37, !noundef !3 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.il, label %bb.bw, label %bb.bx, !prof !4

bb.bw:                                            ; preds = %bb.bv
  %i.ip = load i64, ptr %i.io, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.bo, %bb.bw
  %i.iq = phi i64 [ %i.in, %bb.bw ], [ %i.ic, %bb.bo ]
  %i.ir = phi i64 [ %i.ip, %bb.bw ], [ %i.ie, %bb.bo ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.iq, i64 %i.ir) #17
          to label %.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.is = load ptr, ptr %i.io, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.it = icmp ule i64 %.val79, %i.in
  call void @llvm.assume(i1 %i.it)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not78 = icmp eq i64 %.val79, 0
  br i1 %.not78, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bz, %bb.bx
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.in, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.is, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val79, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull align 1 %.val, i64 %.val79, i1 false)
  br label %bb.by

bb.ca:                                            ; preds = %bb.bu
  %i.iu = load i64, ptr %i.f, align 8, !range !37, !noundef !3
  %.not77 = icmp eq i64 %i.iu, -9223372036854775808
  br i1 %.not77, label %bb.ci, label %.split264.us

.split264.us:                                     ; preds = %bb.z, %bb.ca, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val79, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cc unwind label %bb.cb, !noalias !45

bb.cb:                                            ; preds = %bb.cd, %.split264.us
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #18
          to label %.body unwind label %bb.ch, !noalias !46

bb.cc:                                            ; preds = %.split264.us
  %i.iw = load i64, ptr %i.a, align 8, !range !42, !noalias !45, !noundef !3
  %i.ix = trunc nuw i64 %i.iw to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !range !37, !noalias !45, !noundef !3 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ix, label %bb.cd, label %bb.ce, !prof !4

bb.cd:                                            ; preds = %bb.cc
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !45
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.iz, i64 %i.jb) #17
          to label %bb.cg unwind label %bb.cb, !noalias !45

bb.ce:                                            ; preds = %bb.cc
  %i.jc = load ptr, ptr %i.ja, align 8, !noalias !45, !nonnull !3, !noundef !3 ; 2 uses
  %i.jd = icmp ule i64 %.val79, %i.iz
  call void @llvm.assume(i1 %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  %.not.i = icmp eq i64 %.val79, 0
  br i1 %.not.i, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull readonly align 1 %.val, i64 %.val79, i1 false), !noalias !47
  br label %bb.cl

bb.cg:                                            ; preds = %bb.cd
  unreachable

bb.ch:                                            ; preds = %bb.cb
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !46
  unreachable

bb.ci:                                            ; preds = %bb.ca
  %.sroa.0147.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.jf = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0147.0.copyload, ptr %i.g, align 8
  store <2 x i64> %i.jf, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.jg = icmp eq ptr %.sroa.0147.0.copyload, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.jg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %.split266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0
