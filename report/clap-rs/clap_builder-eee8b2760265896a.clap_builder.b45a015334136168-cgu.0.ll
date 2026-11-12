Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized:bb.a
  %i.y = icmp ugt i64 %.val48, %i.x
  br i1 %i.y, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.e
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.v, i64 noundef %.val48, i64 noundef 1, i64 noundef 1) #43
  %i.z = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !5262, !noundef !10 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  br label %bb.f

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %bb.e
  %i.ab = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.ab)
  %.not.i.i = icmp eq i64 %.val48, 0
  br i1 %.not.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %i.ac = phi i64 [ %i.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.v, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !5262, !nonnull !10, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %.val, i64 %.val48, i1 false), !noalias !5262
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.f
  %i.af = phi i64 [ %i.ac, %bb.f ], [ %i.v, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.ag = add i64 %i.af, %.val48
  store i64 %i.ag, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !5262
  call void @llvm.experimental.noalias.scope.decl(metadata !5263)
  call void @llvm.experimental.noalias.scope.decl(metadata !5264)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !11, !alias.scope !5265, !noundef !10 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i, 0
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !5265
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self(ptr noalias nofree noundef align 8 dereferenceable(712) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [712 x i8], align 8               ; 10 uses
  %i.j = alloca [600 x i8], align 8               ; 55 uses
  %i.k = alloca [600 x i8], align 8               ; 6 uses
  %i.l = alloca [712 x i8], align 8               ; 54 uses
  %i.m = alloca [712 x i8], align 8               ; 54 uses
  %i.n = alloca [712 x i8], align 8               ; 7 uses
  %i.o = alloca [712 x i8], align 8               ; 54 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  %i.q = alloca [712 x i8], align 8               ; 4 uses
  %.sroa.12.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.14.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.16.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.18.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.20.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.22.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.24.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.29.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.31.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.36.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.38.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.40.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.42.i = alloca [16 x i8], align 8         ; 4 uses
  %i.r = alloca [96 x i8], align 8                ; 13 uses
  %i.s = alloca [712 x i8], align 8               ; 4 uses
  %i.t = alloca [712 x i8], align 8               ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 14 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !10 ; 2 uses
  %i.w = and i32 %i.v, 1073741824
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !noundef !10 ; 2 uses
  store ptr null, ptr %i.x, align 8
  %.not103 = icmp eq ptr %i.y, null
  br i1 %.not103, label %bb.e, label %bb.d

bb.c:                                             ; preds = %._crit_edge173, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.s, ptr noundef nonnull align 8 dereferenceable(712) %0, i64 712, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.11.sroa.6.sroa.4.0..sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.sroa.6.sroa.4.0..sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.6.sroa.5.0..sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.6.sroa.5.0..sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.13.sroa.4.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.sroa.4.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.14.sroa.4.0..sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.14.sroa.4.0..sroa.14.0..sroa_idx.sroa_idx, align 8
  %.sroa.14.sroa.5.0..sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.14.sroa.6.sroa.4.0..sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.5.0..sroa.14.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.14.sroa.6.sroa.4.0..sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.14.sroa.6.sroa.5.0..sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.14.sroa.6.sroa.5.0..sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 -1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 -1, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 -1, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 -1, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 -1, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 -1, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 -1, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 -1, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 -1, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr null, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr null, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr null, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr null, ptr %.sroa.41.0..sroa_idx, align 8
  store ptr null, ptr %i.x, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 -1, ptr %.sroa.44.0..sroa_idx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.u, i8 0, i64 9, i1 false)
  call void %i.y(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.s) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEBH_(ptr noalias nofree noundef align 8 dereferenceable(712) %0) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.t, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.pre = load i32, ptr %i.u, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.z = phi i32 [ %i.v, %bb.b ], [ %.pre, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 7 uses
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !10
  %i.ac = or i32 %i.ab, %i.z                      ; 3 uses
  %i.ad = and i32 %i.ac, 2048
  %or.cond154 = icmp eq i32 %i.ad, 0
  %i.ae = or i32 %i.ac, 2621952
  %spec.select = select i1 %or.cond154, i32 %i.ac, i32 %i.ae ; 2 uses
  %i.af = lshr i32 %spec.select, 1
  %i.ag = and i32 %i.af, 4096
  %storemerge156 = or i32 %spec.select, %i.ag     ; 3 uses
  store i32 %storemerge156, ptr %i.u, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !range !24, !noundef !10
  %.not108 = icmp eq i64 %i.ai, -1
  br i1 %.not108, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = phi i32 [ %i.an, %bb.g ], [ %storemerge156, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !10 ; 4 uses
  %i.am = icmp ult i64 %i.al, 12954174209065697
  call void @llvm.assume(i1 %i.am)
  %.not109 = icmp eq i64 %i.al, 0
  br i1 %.not109, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = or i32 %storemerge156, 1024             ; 2 uses
  store i32 %i.an, ptr %i.u, align 4
  br label %bb.f

.thread:                                          ; preds = %bb.f
  %i.ao = or i32 %i.aj, 1048576
  store i32 %i.ao, ptr %i.u, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i145 = load i64, ptr %i.ap, align 8, !alias.scope !5433
  %.sroa.4.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.4.0.copyload.i147 = load ptr, ptr %.sroa.4.0..sroa_idx.i146, align 8, !alias.scope !5433, !nonnull !10, !noundef !10
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10__propagate.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !alias.scope !5434
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5434, !nonnull !10, !noundef !10 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !alias.scope !5434
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5434
  store i64 0, ptr %i.ak, align 8, !alias.scope !5434
  %.idx.i = mul nuw nsw i64 %i.al, 712
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.06.011.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.sroa.4.0.copyload.i, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 712 ; 2 uses
  call fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef align 8 dereferenceable(712) %.sroa.06.011.i) #43
  %i.at = icmp eq ptr %i.as, %i.ar
  br i1 %i.at, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10__propagate.exit, label %.lr.ph.i

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10__propagate.exit: ; preds = %.lr.ph.i, %.thread
  %.sroa.4.0.copyload.i151 = phi ptr [ %.sroa.4.0.copyload.i147, %.thread ], [ %.sroa.4.0.copyload.i, %.lr.ph.i ]
  %.sroa.4.0..sroa_idx.i150 = phi ptr [ %.sroa.4.0..sroa_idx.i146, %.thread ], [ %.sroa.4.0..sroa_idx.i, %.lr.ph.i ] ; 4 uses
  %.sroa.0.0.copyload.i149 = phi i64 [ %.sroa.0.0.copyload.i145, %.thread ], [ %.sroa.0.0.copyload.i, %.lr.ph.i ]
  %i.au = phi ptr [ %i.ap, %.thread ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  store i64 %.sroa.0.0.copyload.i149, ptr %i.au, align 8, !alias.scope !5434
  store ptr %.sroa.4.0.copyload.i151, ptr %.sroa.4.0..sroa_idx.i150, align 8, !alias.scope !5434
  store i64 %i.al, ptr %i.ak, align 8, !alias.scope !5434
  call void @llvm.experimental.noalias.scope.decl(metadata !5435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.40.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5436)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aw = load i64, ptr %i.av, align 8, !range !12, !alias.scope !5437, !noundef !10
  %.not.i.i = icmp eq i64 %i.aw, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ay = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !5437
  %.not1.i.i = icmp eq i64 %i.ay, -1
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ba = load i64, ptr %i.az, align 8, !range !12, !alias.scope !5437
  %.not2.i.i = icmp eq i64 %i.ba, -1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %bb.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17long_help_exists_.exit.i

bb.i:                                             ; preds = %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10__propagate.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !5437, !nonnull !10, !noundef !10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !5437, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.be, 600
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17long_help_exists_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.phi.trans.insert1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.bg = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %i.bh, %.backedge.i.i.i ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 600 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5438)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 592
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !5438, !noalias !5439, !noundef !10 ; 3 uses
  %i.bk = and i32 %i.bj, 4
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %.backedge.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  %i.bm = load i64, ptr %i.bl, align 8, !range !12, !alias.scope !5438, !noalias !5439, !noundef !10
  %.not1.i.i.i.i = icmp eq i64 %i.bm, -1
  %i.bn = and i32 %i.bj, 12288
  %i.bo = icmp eq i32 %i.bn, 0
  %or.cond5.i.i.i.i = and i1 %i.bo, %.not1.i.i.i.i
  br i1 %or.cond5.i.i.i.i, label %bb.l, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17long_help_exists_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = and i32 %i.bj, 16
  %.not4.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not4.i.i.i.i, label %bb.m, label %.backedge.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5440
  call void @llvm.experimental.noalias.scope.decl(metadata !5441)
  call void @llvm.experimental.noalias.scope.decl(metadata !5442)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !5443, !noalias !5439
  %i.br = trunc nuw i64 %.sroa.03.0.copyload.i.i.i.i.i to i1
  %.sroa.54.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.54.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5443, !noalias !5439
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.54.0.copyload.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.br, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 80 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !24, !alias.scope !5443, !noalias !5439, !noundef !10
  %.not6.i.i.i.i.i = icmp eq i64 %i.bt, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i.i.i.i = select i1 %.not6.i.i.i.i.i, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT, ptr %i.bs ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5444)
  %i.bu = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i.i.i.i, align 8, !range !47, !alias.scope !5444, !noalias !5445, !noundef !10
  switch i64 %i.bu, label %default.unreachable [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 4, label %bb.r
  ]

default.unreachable:                              ; preds = %bb.n, %bb.cd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %bb.bq
  unreachable

bb.o:                                             ; preds = %bb.n
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !5444, !noalias !5445, !nonnull !10, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !5444, !noalias !5445, !nonnull !10, !align !16, !noundef !10
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.6.0.i.i.i.i.i.i = phi ptr [ %i.by, %bb.r ], [ @256, %bb.o ], [ @257, %bb.p ], [ @258, %bb.q ], [ @255, %bb.n ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.n ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i.i.i.i, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !10, !noalias !5446, !nonnull !10
  %i.cb = call { ptr, ptr } %i.ca(ptr noundef nonnull %.sroa.0.0.i.i.i.i.i.i) #45, !noalias !5446, !inline_history !5283 ; 2 uses
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not7.i.i.i.i.i, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.m
  store i64 0, ptr %i.f, align 8, !alias.scope !5441, !noalias !5440
  br label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit.i.i.i.i

bb.t:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i.i.i.i
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1      ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self:bb.a
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i104.i, i8 0, i64 16, i1 false), !alias.scope !5501, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i105.i, align 8, !alias.scope !5501, !noalias !5435
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %.sroa.430.0..sroa_idx.i107.i = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i106.i, i8 0, i64 16, i1 false), !alias.scope !5501, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i107.i, align 8, !alias.scope !5501, !noalias !5435
  %.sroa.531.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %.sroa.433.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i108.i, i8 0, i64 16, i1 false), !alias.scope !5501, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i109.i, align 8, !alias.scope !5501, !noalias !5435
  %.sroa.534.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i110.i, align 8, !alias.scope !5501, !noalias !5435
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  store ptr null, ptr %i.ib, align 8, !alias.scope !5501, !noalias !5435
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %i.ic, align 8, !alias.scope !5501, !noalias !5435
  %i.id = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.id, align 8, !alias.scope !5501, !noalias !5435
  %i.ie = getelementptr inbounds nuw i8, ptr %i.o, i64 656
  store ptr null, ptr %i.ie, align 8, !alias.scope !5501, !noalias !5435
  %i.if = getelementptr inbounds nuw i8, ptr %i.o, i64 672
  store ptr null, ptr %i.if, align 8, !alias.scope !5501, !noalias !5435
  %i.ig = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 -1, ptr %i.ig, align 8, !alias.scope !5501, !noalias !5435
  %i.ih = getelementptr inbounds nuw i8, ptr %i.o, i64 708
  store i8 0, ptr %i.ih, align 4, !alias.scope !5501, !noalias !5435
  %i.ii = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  store ptr null, ptr %i.ii, align 8, !alias.scope !5501, !noalias !5435
  %i.ij = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store i64 0, ptr %i.ij, align 8, !alias.scope !5501, !noalias !5435
  %.sroa.455.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i111.i, align 8, !alias.scope !5501, !noalias !5435
  %.sroa.556.0..sroa_idx.i112.i = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i112.i, i8 0, i64 16, i1 false), !alias.scope !5501, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i113.i, align 8, !alias.scope !5501, !noalias !5435
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i114.i, align 8, !alias.scope !5501, !noalias !5435
  call fastcc void @_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(712) %i.p, ptr noalias nofree noundef align 8 captures(address) dereferenceable(712) %i.o) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5435
  %i.ik = getelementptr inbounds nuw i8, ptr %i.p, i64 700 ; 2 uses
  %i.il = load <2 x i32>, ptr %i.ik, align 4, !noalias !5435
  %i.im = or <2 x i32> %i.il, splat (i32 1048576)
  store <2 x i32> %i.im, ptr %i.ik, align 4, !noalias !5435
  %i.in = load ptr, ptr %.sroa.4.0..sroa_idx.i150, align 8, !alias.scope !5435, !nonnull !10, !noundef !10 ; 2 uses
  %i.io = load i64, ptr %i.ak, align 8, !alias.scope !5435, !noundef !10
  %i.ip = getelementptr inbounds nuw [712 x i8], ptr %i.in, i64 %i.io
  call fastcc void @_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB3_7Command11subcommandsBP_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterBP_ENvMs3_B3_BP_22__copy_subtree_for_helpEEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(712) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(712) %i.p, ptr noundef nonnull %i.in, ptr noundef %i.ip) #43, !noalias !5435, !inline_history !5310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5435
  %i.iq = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  store ptr @83, ptr %i.iq, align 8, !alias.scope !5502, !noalias !5435
  %i.ir = getelementptr inbounds nuw i8, ptr %i.m, i64 568
  store i64 4, ptr %i.ir, align 8, !alias.scope !5502, !noalias !5435
  %i.is = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  store ptr null, ptr %i.is, align 8, !alias.scope !5502, !noalias !5435
  %i.it = getelementptr inbounds nuw i8, ptr %i.m, i64 696
  store i32 -1, ptr %i.it, align 8, !alias.scope !5502, !noalias !5435
  %i.iu = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  store i64 -1, ptr %i.iu, align 8, !alias.scope !5502, !noalias !5435
  %i.iv = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  store i64 -1, ptr %i.iv, align 8, !alias.scope !5502, !noalias !5435
  %i.iw = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  store ptr null, ptr %i.iw, align 8, !alias.scope !5502, !noalias !5435
  %i.ix = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  store ptr null, ptr %i.ix, align 8, !alias.scope !5502, !noalias !5435
  %i.iy = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  store ptr null, ptr %i.iy, align 8, !alias.scope !5502, !noalias !5435
  %i.iz = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  store i64 -1, ptr %i.iz, align 8, !alias.scope !5502, !noalias !5435
  %i.ja = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  store i64 -1, ptr %i.ja, align 8, !alias.scope !5502, !noalias !5435
  %i.jb = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  store i64 -1, ptr %i.jb, align 8, !alias.scope !5502, !noalias !5435
  %i.jc = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  store i64 -1, ptr %i.jc, align 8, !alias.scope !5502, !noalias !5435
  %i.jd = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  store i64 -1, ptr %i.jd, align 8, !alias.scope !5502, !noalias !5435
  %i.je = getelementptr inbounds nuw i8, ptr %i.m, i64 440
  store i64 -1, ptr %i.je, align 8, !alias.scope !5502, !noalias !5435
  %i.jf = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %i.jf, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.4.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i115.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.5.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.424.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i116.i, i8 0, i64 16, i1 false), !alias.scope !5502, !noalias !5435
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i117.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.525.0..sroa_idx.i118.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.427.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i118.i, i8 0, i64 16, i1 false), !alias.scope !5502, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i119.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.528.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i120.i, align 8, !alias.scope !5502, !noalias !5435
  %i.jg = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  store i64 -1, ptr %i.jg, align 8, !alias.scope !5502, !noalias !5435
  %i.jh = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  store i64 -1, ptr %i.jh, align 8, !alias.scope !5502, !noalias !5435
  %i.ji = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  store i64 -1, ptr %i.ji, align 8, !alias.scope !5502, !noalias !5435
  store i64 0, ptr %i.m, align 8, !alias.scope !5502, !noalias !5435
  %i.jj = getelementptr inbounds nuw i8, ptr %i.m, i64 536
  store i64 -1, ptr %i.jj, align 8, !alias.scope !5502, !noalias !5435
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 700
  store i32 0, ptr %i.jk, align 4, !alias.scope !5502, !noalias !5435
  %i.jl = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  store i32 0, ptr %i.jl, align 8, !alias.scope !5502, !noalias !5435
  %i.jm = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store i64 0, ptr %i.jm, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.441.0..sroa_idx.i121.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i121.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.542.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i123.i = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i122.i, i8 0, i64 16, i1 false), !alias.scope !5502, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i123.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i124.i = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %.sroa.430.0..sroa_idx.i125.i = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i124.i, i8 0, i64 16, i1 false), !alias.scope !5502, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i125.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.531.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %.sroa.433.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i126.i, i8 0, i64 16, i1 false), !alias.scope !5502, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i127.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.534.0..sroa_idx.i128.i = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i128.i, align 8, !alias.scope !5502, !noalias !5435
  %i.jn = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  store ptr null, ptr %i.jn, align 8, !alias.scope !5502, !noalias !5435
  %i.jo = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.jo, align 8, !alias.scope !5502, !noalias !5435
  %i.jp = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.jp, align 8, !alias.scope !5502, !noalias !5435
  %i.jq = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  store ptr null, ptr %i.jq, align 8, !alias.scope !5502, !noalias !5435
  %i.jr = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  store ptr null, ptr %i.jr, align 8, !alias.scope !5502, !noalias !5435
  %i.js = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 -1, ptr %i.js, align 8, !alias.scope !5502, !noalias !5435
  %i.jt = getelementptr inbounds nuw i8, ptr %i.m, i64 708
  store i8 0, ptr %i.jt, align 4, !alias.scope !5502, !noalias !5435
  %i.ju = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  store ptr null, ptr %i.ju, align 8, !alias.scope !5502, !noalias !5435
  %i.jv = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  store i64 0, ptr %i.jv, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.455.0..sroa_idx.i129.i = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i129.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.556.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i130.i, i8 0, i64 16, i1 false), !alias.scope !5502, !noalias !5435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i131.i, align 8, !alias.scope !5502, !noalias !5435
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i132.i = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i132.i, align 8, !alias.scope !5502, !noalias !5435
  call fastcc void @_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(712) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(712) %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5435
  %i.jw = getelementptr inbounds nuw i8, ptr %i.n, i64 608
  store ptr null, ptr %i.jw, align 8, !noalias !5435
  %i.jx = getelementptr inbounds nuw i8, ptr %i.n, i64 624
  store ptr null, ptr %i.jx, align 8, !noalias !5435
  %i.jy = getelementptr inbounds nuw i8, ptr %i.n, i64 700 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !noalias !5435, !noundef !10
  %i.ka = or i32 %i.jz, 2621440
  store i32 %i.ka, ptr %i.jy, align 4, !noalias !5435
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.n) #43, !noalias !5435, !inline_history !5310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5435
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit96.i
  call fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef align 8 dereferenceable(712) %i.i) #43, !inline_history !5310
  %i.kb = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  store ptr null, ptr %i.kb, align 8, !noalias !5435
  %i.kc = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store ptr null, ptr %i.kc, align 8, !noalias !5435
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 700 ; 2 uses
  %i.kd = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !5435
  %i.ke = and <2 x i32> %i.kd, <i32 -6815745, i32 -4194305>
  %i.kf = or disjoint <2 x i32> %i.ke, <i32 2621440, i32 0>
  store <2 x i32> %i.kf, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !5435
  %i.kg = load i64, ptr %i.ak, align 8, !alias.scope !5503, !noundef !10 ; 3 uses
  %i.kh = load i64, ptr %i.au, align 8, !range !11, !alias.scope !5503, !noundef !10
  %i.ki = icmp eq i64 %i.kg, %i.kh
  br i1 %i.ki, label %bb.am, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au) #42, !noalias !5504, !inline_history !5310
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i: ; preds = %bb.am, %bb.al
  %i.kj = load ptr, ptr %.sroa.4.0..sroa_idx.i150, align 8, !alias.scope !5503, !nonnull !10, !noundef !10
  %i.kk = getelementptr inbounds nuw [712 x i8], ptr %i.kj, i64 %i.kg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.kk, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.i, i64 712, i1 false), !noalias !5435
  %i.kl = add i64 %i.kg, 1
  store i64 %i.kl, ptr %i.ak, align 8, !alias.scope !5503
  %.pre184 = load i32, ptr %i.u, align 4, !alias.scope !5505 ; 2 uses
  %.pre185 = load i32, ptr %i.aa, align 8, !alias.scope !5505
  %.pre199 = and i32 %.pre184, 1048576
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit: ; preds = %bb.af, %bb.ag, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i
  %.pre-phi = phi i32 [ %i.fa, %bb.af ], [ 0, %bb.ag ], [ %.pre199, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i ]
  %i.km = phi i32 [ %.pre186, %bb.af ], [ %.pre186, %bb.ag ], [ %.pre185, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i ] ; 2 uses
  %i.kn = phi i32 [ %i.ez, %bb.af ], [ %i.ez, %bb.ag ], [ %.pre184, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8push_mutBL_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5505)
  %i.ko = and i32 %i.km, 1048576
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = load ptr, ptr %.sroa.4.0..sroa_idx.i150, align 8, !alias.scope !5505, !nonnull !10, !noundef !10 ; 2 uses
  %i.kr = load i64, ptr %i.ak, align 8, !alias.scope !5505, !noundef !10 ; 2 uses
  %.idx.i123 = mul nuw nsw i64 %i.kr, 712
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 %.idx.i123
  %i.kt = icmp eq i64 %i.kr, 0
  br i1 %i.kt, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !5505, !nonnull !10 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !5505
  %i.ky = getelementptr inbounds nuw [600 x i8], ptr %i.kv, i64 %i.kx
  br label %bb.an

bb.an:                                            ; preds = %.backedge.i, %.lr.ph.i124
  %.sroa.02.018.i = phi ptr [ %i.kq, %.lr.ph.i124 ], [ %i.kz, %.backedge.i ] ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.02.018.i, i64 712 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.02.018.i, i64 568
  %i.lb = load i64, ptr %i.la, align 8, !noalias !5505, !noundef !10
  %i.lc = icmp eq i64 %i.lb, 4
  br i1 %i.lc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.02.018.i, i64 560
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !5505, !nonnull !10, !noundef !10
  %i.lf = load i32, ptr %i.le, align 1
  %i.lg = icmp ne i32 %i.lf, 1886152040
  %i.lh = zext i1 %i.lg to i32
  %i.li = or i32 %i.lh, %.pre-phi
  %i.lj = icmp ne i32 %i.li, 0
  %brmerge.i = select i1 %i.lj, i1 true, i1 %i.kp
  br i1 %brmerge.i, label %bb.ap, label %.backedge.i

.backedge.i:                                      ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i, %bb.ao
  %i.lk = icmp eq ptr %i.kz, %i.ks
  br i1 %i.lk, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit, label %bb.an

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ll = getelementptr i8, ptr %.sroa.02.018.i, i64 136 ; 2 uses
  %i.lm = getelementptr i8, ptr %.sroa.02.018.i, i64 144 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.02.018.i, i64 128 ; 2 uses
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge, %bb.ap
  %i.lo = phi ptr [ %i.kv, %bb.ap ], [ %i.lq, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge ] ; 6 uses
  %i.lp = icmp eq ptr %i.lo, %i.ky
  br i1 %i.lp, label %.backedge.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 600
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 592
  %i.ls = load i32, ptr %i.lr, align 8, !noalias !5506, !noundef !10
  %i.lt = and i32 %i.ls, 2
  %.not.i.i125 = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i125, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs3_NtBU_7commandNtB2y_7Command22__propagate_global_args0EBW_.exit.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i, %bb.aq, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap4push.exit.i128
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs3_NtBU_7commandNtB2y_7Command22__propagate_global_args0EBW_.exit.i: ; preds = %bb.aq
  %.sroa.02.0.val.i = load ptr, ptr %i.ll, align 8, !noalias !5505, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.02.0.val8.i = load i64, ptr %i.lm, align 8, !noalias !5505, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5507)
  %.idx.i.i126 = mul nuw nsw i64 %.sroa.02.0.val8.i, 600
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.02.0.val.i, i64 %.idx.i.i126
  %i.lv = icmp eq i64 %.sroa.02.0.val8.i, 0
  br i1 %i.lv, label %.loopexit.i, label %.lr.ph.i.i.i127

.lr.ph.i.i.i127:                                  ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs3_NtBU_7commandNtB2y_7Command22__propagate_global_args0EBW_.exit.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 536
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 544
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !5507, !noalias !5508, !noundef !10 ; 2 uses
  %i.lz = load ptr, ptr %i.lw, align 8, !alias.scope !5507, !noalias !5505, !nonnull !10
  br label %bb.ar

bb.ar:                                            ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i, %.lr.ph.i.i.i127
  %i.ma = phi ptr [ %.sroa.02.0.val.i, %.lr.ph.i.i.i127 ], [ %i.mb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 600 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 544
  %i.md = load i64, ptr %i.mc, align 8, !noalias !5509, !noundef !10
  %i.me = icmp eq i64 %i.md, %i.ly
  br i1 %i.me, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i: ; preds = %bb.ar
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 536
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !5509, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.mg, ptr nonnull %i.lz, i64 %i.ly), !noalias !5509
  %i.mh = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.mh, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i, %bb.ar
  %i.mi = icmp eq ptr %i.mb, %i.lu
  br i1 %i.mi, label %.loopexit.i, label %bb.ar

.loopexit.i:                                      ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs3_NtBU_7commandNtB2y_7Command22__propagate_global_args0EBW_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5505
  call fastcc void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(600) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.lo) #45, !noalias !5505
  call void @llvm.experimental.noalias.scope.decl(metadata !5510)
  call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  %i.mj = load i64, ptr %i.lm, align 8, !alias.scope !5512, !noalias !5505, !noundef !10 ; 3 uses
  %i.mk = load i64, ptr %i.ln, align 8, !range !11, !alias.scope !5512, !noalias !5505, !noundef !10
  %i.ml = icmp eq i64 %i.mj, %i.mk
  br i1 %i.ml, label %bb.as, label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap4push.exit.i128

bb.as:                                            ; preds = %.loopexit.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ln) #42, !noalias !5513
  br label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap4push.exit.i128

_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap4push.exit.i128: ; preds = %bb.as, %.loopexit.i
  %i.mm = load ptr, ptr %i.ll, align 8, !alias.scope !5512, !noalias !5505, !nonnull !10, !noundef !10
  %i.mn = getelementptr inbounds nuw [600 x i8], ptr %i.mm, i64 %i.mj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.mn, ptr noundef nonnull readonly align 8 dereferenceable(600) %i.a, i64 600, i1 false), !noalias !5514
  %i.mo = add i64 %i.mj, 1
  store i64 %i.mo, ptr %i.lm, align 8, !alias.scope !5512, !noalias !5505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5505
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit: ; preds = %.backedge.i
  %.pre187 = load i32, ptr %i.u, align 4
  %.pre188 = load i32, ptr %i.aa, align 8
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit: ; preds = %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit
  %2 = phi i32 [ %.pre188, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit ], [ %i.km, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit ]
  %i.mp = phi i32 [ %.pre187, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit ], [ %i.kn, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit ]
  %i.mq = and i32 %i.mp, 16777216
  %.not110 = icmp ne i32 %i.mq, 0
  %3 = and i32 %2, 16777216
  %4 = icmp ne i32 %3, 0
  %.sroa.08.0 = select i1 %.not110, i1 true, i1 %4
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.mu = load i64, ptr %i.mt, align 8, !noundef !10 ; 2 uses
  %.idx174 = mul nuw nsw i64 %i.mu, 600
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx174
  %i.mw = icmp eq i64 %i.mu, 0
  br i1 %i.mw, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread, label %.lr.ph169

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread: ; preds = %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit

.lr.ph169:                                        ; preds = %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.nc = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 89
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph169, %bb.cq
  %.sroa.06.0168 = phi i64 [ 1, %.lr.ph169 ], [ %.sroa.06.1, %bb.cq ] ; 5 uses
  %.sroa.09.0165 = phi ptr [ %i.ms, %.lr.ph169 ], [ %i.nf, %bb.cq ] ; 32 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 600 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 160
  %i.nh = load ptr, ptr %i.ng, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 168
  %i.nj = load i64, ptr %i.ni, align 8, !noundef !10 ; 2 uses
  %.idx175 = shl nuw nsw i64 %i.nj, 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.idx175
  %i.nl = icmp eq i64 %i.nj, 0
  br i1 %i.nl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.at
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 536 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 544 ; 2 uses
  br label %bb.bn

._crit_edge170:                                   ; preds = %bb.cq
  %.pre192 = load i64, ptr %i.mt, align 8, !alias.scope !5515 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5515)
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 14 uses
  %i.np = icmp ult i64 %.pre192, 15372286728091294
  call void @llvm.assume(i1 %i.np)
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 13 uses
  %i.nr = load i64, ptr %i.nq, align 8, !alias.scope !5516, !noundef !10 ; 2 uses
  %i.ns = load i64, ptr %i.no, align 8, !range !11, !alias.scope !5516, !noundef !10
  %i.nt = sub i64 %i.ns, %i.nr
  %i.nu = icmp ugt i64 %.pre192, %i.nt
  br i1 %i.nu, label %bb.au, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i, !prof !5517

bb.au:                                            ; preds = %._crit_edge170
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no, i64 noundef %i.nr, i64 noundef range(i64 0, 15372286728091294) %.pre192, i64 noundef 8, i64 noundef 32) #43
  %.pre.i133 = load i64, ptr %i.mt, align 8, !alias.scope !5515
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i: ; preds = %bb.au, %._crit_edge170
  %i.nv = phi i64 [ %.pre192, %._crit_edge170 ], [ %.pre.i133, %bb.au ] ; 2 uses
  %i.nw = load ptr, ptr %i.mr, align 8, !alias.scope !5515, !nonnull !10, !noundef !10 ; 2 uses
  %.idx.i129 = mul nuw nsw i64 %i.nv, 600
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.idx.i129
  %i.ny = icmp eq i64 %i.nv, 0
  br i1 %i.ny, label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  br label %bb.av

bb.av:                                            ; preds = %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, %.lr.ph.i130
  %.sroa.0.010.i = phi ptr [ %i.nw, %.lr.ph.i130 ], [ %i.oa, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ] ; 10 uses
  %.sroa.7.09.i = phi i64 [ 0, %.lr.ph.i130 ], [ %i.ob, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ] ; 6 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 600 ; 2 uses
  %i.ob = add nuw nsw i64 %.sroa.7.09.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !5518)
  call void @llvm.experimental.noalias.scope.decl(metadata !5519)
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 40
  %i.od = load i64, ptr %i.oc, align 8, !range !13, !alias.scope !5519, !noalias !5515, !noundef !10
  %i.oe = trunc nuw i64 %i.od to i1
  br i1 %i.oe, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48
  %i.og = load i64, ptr %i.of, align 8, !alias.scope !5519, !noalias !5515, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !5520)
  %i.oh = load i64, ptr %i.nq, align 8, !alias.scope !5521, !noundef !10 ; 3 uses
  %i.oi = load i64, ptr %i.no, align 8, !range !11, !alias.scope !5521, !noundef !10
  %i.oj = icmp eq i64 %i.oh, %i.oi
  br i1 %i.oj, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no) #42, !noalias !5522
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i: ; preds = %bb.ax, %bb.aw
  %i.ok = load ptr, ptr %i.nz, align 8, !alias.scope !5521, !nonnull !10, !noundef !10
  %i.ol = getelementptr inbounds nuw [32 x i8], ptr %i.ok, i64 %i.oh ; 3 uses
  store i32 2, ptr %i.ol, align 8, !noalias !5523
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store i64 %i.og, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !5523
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !5523
  %i.om = add i64 %i.oh, 1
  store i64 %i.om, ptr %i.nq, align 8, !alias.scope !5521
  br label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i

bb.ay:                                            ; preds = %bb.av
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 584
  %i.oo = load i32, ptr %i.on, align 8, !range !44, !alias.scope !5519, !noalias !5515, !noundef !10 ; 2 uses
  %.not.i.i131 = icmp eq i32 %i.oo, -1
  br i1 %.not.i.i131, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  %i.op = load i64, ptr %i.nq, align 8, !alias.scope !5525, !noundef !10 ; 3 uses
  %i.oq = load i64, ptr %i.no, align 8, !range !11, !alias.scope !5525, !noundef !10
  %i.or = icmp eq i64 %i.op, %i.oq
  br i1 %i.or, label %bb.ba, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i

bb.ba:                                            ; preds = %bb.az
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no) #42, !noalias !5526
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i: ; preds = %bb.ba, %bb.az
  %i.os = load ptr, ptr %i.nz, align 8, !alias.scope !5525, !nonnull !10, !noundef !10
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr %i.os, i64 %i.op ; 3 uses
  store i32 0, ptr %i.ot, align 8, !noalias !5527
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  store i32 %i.oo, ptr %.sroa.431.0..sroa_idx.i.i, align 4, !noalias !5527
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !5527
  %i.ou = add i64 %i.op, 1
  store i64 %i.ou, ptr %i.nq, align 8, !alias.scope !5525
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i, %bb.ay
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 552
  %i.ow = load ptr, ptr %i.ov, align 8, !alias.scope !5519, !noalias !5515, !noundef !10 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ow, null
  br i1 %.not23.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 560
  %i.oy = load i64, ptr %i.ox, align 8, !alias.scope !5519, !noalias !5515, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !5528)
  %i.oz = load i64, ptr %i.nq, align 8, !alias.scope !5529, !noundef !10 ; 3 uses
  %i.pa = load i64, ptr %i.no, align 8, !range !11, !alias.scope !5529, !noundef !10
  %i.pb = icmp eq i64 %i.oz, %i.pa
  br i1 %i.pb, label %bb.bd, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no) #42, !noalias !5530
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i: ; preds = %bb.bd, %bb.bc
  %i.pc = load ptr, ptr %i.nz, align 8, !alias.scope !5529, !nonnull !10, !noundef !10
  %i.pd = getelementptr inbounds nuw [32 x i8], ptr %i.pc, i64 %i.oz ; 4 uses
  store i32 1, ptr %i.pd, align 8, !noalias !5531
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store ptr %i.ow, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !5531
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store i64 %i.oy, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !5531
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5531
  %i.pe = add i64 %i.oz, 1
  store i64 %i.pe, ptr %i.nq, align 8, !alias.scope !5529
  br label %bb.be

bb.be:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i, %bb.bb
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 328
  %i.pg = load ptr, ptr %i.pf, align 8, !alias.scope !5519, !noalias !5515, !nonnull !10, !noundef !10 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 336
  %i.pi = load i64, ptr %i.ph, align 8, !alias.scope !5519, !noalias !5515, !noundef !10 ; 2 uses
  %.idx.i.i132 = shl nuw nsw i64 %i.pi, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx.i.i132
  %i.pk = icmp eq i64 %i.pi, 0
  br i1 %i.pk, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %.pre.i.i = load i64, ptr %i.nq, align 8, !alias.scope !5532
  %.pre53.i.i = load i64, ptr %i.no, align 8, !range !11, !alias.scope !5532
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %.lr.ph.i.i
  %i.pl = phi i64 [ %.pre53.i.i, %.lr.ph.i.i ], [ %i.pq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pm = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.pt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 3 uses
  %.sroa.011.047.i.i = phi ptr [ %i.pg, %.lr.ph.i.i ], [ %i.pn, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.011.047.i.i, i64 8 ; 2 uses
  %i.po = load i32, ptr %.sroa.011.047.i.i, align 4, !range !51, !noalias !5533, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !5534)
  %i.pp = icmp eq i64 %i.pm, %i.pl
end_hunk_1
