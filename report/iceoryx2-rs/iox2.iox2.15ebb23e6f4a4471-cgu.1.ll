Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2.iox2.15ebb23e6f4a4471-cgu.1?download=true
inline.NumInlined: 312
inline.NumDeleted: 234
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2:bb.a
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload ; 2 uses
  store ptr %.sroa.410.0.copyload, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.09.0.copyload, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.410.0.copyload, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not14 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.j
  %.val1.i.i = phi ptr [ %i.w, %bb.h ], [ %.val1.i.i.pre, %bb.j ] ; 2 uses
  %.val.i.i = phi ptr [ %.sroa.410.0.copyload, %bb.h ], [ %.val.i.i.pre, %bb.j ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.aa = ptrtoint ptr %.val1.i.i to i64
  %i.ab = ptrtoint ptr %.val.i.i to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = udiv exact i64 %i.ac, 24
  %i.ae = icmp eq ptr %.val1.i.i, %.val.i.i
  br i1 %i.ae, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringEECs1SGmE4BlMHt_4iox2.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #19, !noalias !421
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #19, !noalias !421
  %i.ah = icmp eq i64 %i.ag, %i.ad
  br i1 %i.ah, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringEECs1SGmE4BlMHt_4iox2.exit, label %.lr.ph.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringEECs1SGmE4BlMHt_4iox2.exit: ; preds = %.lr.ph.i.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  %i.ai = load ptr, ptr %i.d, align 8, !alias.scope !421, !nonnull !5, !noundef !5
  %i.aj = load i64, ptr %i.x, align 8, !alias.scope !421, !noundef !5
  store i64 %i.aj, ptr %i.a, align 8, !noalias !421
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.ak, align 8, !noalias !421
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.j:                                             ; preds = %bb.h
  call void @_RNvMs2_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE9move_tailCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload) #19
  %i.al = call noundef zeroext i1 @_RINvMs2_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #19 ; 0 uses
  %.val.i.i.pre = load ptr, ptr %i.y, align 8, !alias.scope !421
  %.val1.i.i.pre = load ptr, ptr %i.z, align 8, !alias.scope !421
  br label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs5WK5l2q0aFk_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCsbqH9stoieM8_5alloc6string6StringENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs1SGmE4BlMHt_4iox2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #18
  %i.d = load ptr, ptr %i.b, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtCs1SGmE4BlMHt_4iox23cliNtB4_3CliNtNtCs5WK5l2q0aFk_12clap_builder6derive14CommandFactory7command(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i112.i = alloca [16 x i8], align 8     ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i109.i = alloca [16 x i8], align 8     ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i106.i = alloca [16 x i8], align 8     ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i103.i = alloca [16 x i8], align 8     ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [712 x i8], align 8               ; 6 uses
  %i.s = alloca [712 x i8], align 8               ; 6 uses
  %i.t = alloca [712 x i8], align 8               ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [600 x i8], align 8               ; 56 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.5191.i = alloca [40 x i8], align 8       ; 4 uses
  %.sroa.10202.i = alloca [496 x i8], align 8     ; 4 uses
  %i.w = alloca [600 x i8], align 8               ; 13 uses
  %i.x = alloca [712 x i8], align 8               ; 5 uses
  %i.y = alloca [712 x i8], align 8               ; 6 uses
  %i.z = alloca [600 x i8], align 8               ; 15 uses
  %i.aa = alloca [600 x i8], align 8              ; 4 uses
  %i.ab = alloca [600 x i8], align 8              ; 57 uses
  %.sroa.0158.i = alloca [80 x i8], align 8       ; 4 uses
  %.sroa.7165.i = alloca [448 x i8], align 8      ; 4 uses
  %.sroa.9168.i = alloca [16 x i8], align 8       ; 4 uses
  %.sroa.15174.i = alloca [3 x i8], align 1       ; 4 uses
  %i.ac = alloca [712 x i8], align 8              ; 5 uses
  %i.ad = alloca [600 x i8], align 8              ; 15 uses
  %i.ae = alloca [600 x i8], align 8              ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [600 x i8], align 8              ; 57 uses
  %.sroa.0130.i = alloca [80 x i8], align 8       ; 4 uses
  %.sroa.7.i = alloca [448 x i8], align 8         ; 4 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.15.i = alloca [3 x i8], align 1          ; 4 uses
  %i.ah = alloca [712 x i8], align 8              ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [96 x i8], align 8               ; 14 uses
  %i.ak = alloca [96 x i8], align 8               ; 4 uses
  %i.al = alloca [712 x i8], align 8              ; 51 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5191.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10202.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0158.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7165.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9168.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15174.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0130.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.al, align 8, !noalias !512
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 1, ptr %.sroa.43.0..sroa_idx, align 8, !noalias !512
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !512
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 -1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !512
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 0, ptr %.sroa.74.0..sroa_idx, align 8, !noalias !512
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx, align 8, !noalias !512
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx, align 8, !noalias !512
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx, align 8, !noalias !512
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8, !noalias !512
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx, align 8, !noalias !512
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.0..sroa_idx, align 8, !noalias !512
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 208 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21.0..sroa_idx, align 8, !noalias !512
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 216 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24.0..sroa_idx, align 8, !noalias !512
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.26.0..sroa_idx, align 8, !noalias !512
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 264
  store i64 0, ptr %.sroa.27.0..sroa_idx, align 8, !noalias !512
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  store i64 -1, ptr %.sroa.28.0..sroa_idx, align 8, !noalias !512
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 296
  store i64 -1, ptr %.sroa.295.0..sroa_idx, align 8, !noalias !512
  %.sroa.306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  store i64 -1, ptr %.sroa.306.0..sroa_idx, align 8, !noalias !512
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 -1, ptr %.sroa.317.0..sroa_idx, align 8, !noalias !512
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store i64 -1, ptr %.sroa.328.0..sroa_idx, align 8, !noalias !512
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 392
  store i64 -1, ptr %.sroa.339.0..sroa_idx, align 8, !noalias !512
  %.sroa.3410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 416
  store i64 -1, ptr %.sroa.3410.0..sroa_idx, align 8, !noalias !512
  %.sroa.3511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 440
  store i64 -1, ptr %.sroa.3511.0..sroa_idx, align 8, !noalias !512
  %.sroa.3612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 -1, ptr %.sroa.3612.0..sroa_idx, align 8, !noalias !512
  %.sroa.3713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i64 -1, ptr %.sroa.3713.0..sroa_idx, align 8, !noalias !512
  %.sroa.3814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store i64 -1, ptr %.sroa.3814.0..sroa_idx, align 8, !noalias !512
  %.sroa.3915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  store i64 -1, ptr %.sroa.3915.0..sroa_idx, align 8, !noalias !512
  %.sroa.4016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 560
  store ptr @25, ptr %.sroa.4016.0..sroa_idx, align 8, !noalias !512
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 568
  store i64 4, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !512
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 576
  store ptr null, ptr %.sroa.42.0..sroa_idx, align 8, !noalias !512
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 592
  store ptr null, ptr %.sroa.4318.0..sroa_idx, align 8, !noalias !512
  %.sroa.4419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store ptr null, ptr %.sroa.4419.0..sroa_idx, align 8, !noalias !512
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store ptr null, ptr %.sroa.4520.0..sroa_idx, align 8, !noalias !512
  %.sroa.4621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 640
  store ptr null, ptr %.sroa.4621.0..sroa_idx, align 8, !noalias !512
  %.sroa.4722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 656
  store ptr null, ptr %.sroa.4722.0..sroa_idx, align 8, !noalias !512
  %.sroa.4823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 672
  store ptr null, ptr %.sroa.4823.0..sroa_idx, align 8, !noalias !512
  %.sroa.4924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 688
  store ptr null, ptr %.sroa.4924.0..sroa_idx, align 8, !noalias !512
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 696
  store i32 -1, ptr %.sroa.50.0..sroa_idx, align 8, !noalias !512
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.51.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !511
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i64 0, ptr %i.aj, align 8, !noalias !511
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.5.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i8 0, ptr %i.ao, align 8, !noalias !511
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i1, i8 0, i64 16, i1 false), !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i64 0, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !511
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 89
  store ptr @19, ptr %i.am, align 8, !noalias !511
  store i64 3, ptr %i.an, align 8, !noalias !511
  store i8 1, ptr %i.ap, align 1, !noalias !511
  store ptr @11, ptr %i.ai, align 8, !noalias !511
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 4, ptr %i.aq, align 8, !noalias !511
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @13, ptr %i.ar, align 8, !noalias !511
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 5, ptr %i.as, align 8, !noalias !511
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr @15, ptr %i.at, align 8, !noalias !511
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 16, ptr %i.au, align 8, !noalias !511
  call void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j3_ECs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai) #19, !noalias !511
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 200 ; 2 uses
  %1 = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !alias.scope !513, !noalias !514, !noundef !5 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !11, !alias.scope !513, !noalias !514, !noundef !5
  %i.ax = icmp eq i64 %1, %i.aw
  br i1 %i.ax, label %bb.b, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_group8ArgGroupE8push_mutCs1SGmE4BlMHt_4iox2.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_group8ArgGroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av) #20, !noalias !514
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_group8ArgGroupE8push_mutCs1SGmE4BlMHt_4iox2.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_group8ArgGroupE8push_mutCs1SGmE4BlMHt_4iox2.exit.i: ; preds = %bb.b, %bb.a
  %i.ay = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !alias.scope !513, !noalias !514, !nonnull !5, !noundef !5
  %2 = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !noalias !511
  %3 = add i64 %1, 1
  store i64 %3, ptr %.sroa.22.0..sroa_idx, align 8, !alias.scope !513, !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.al, i64 712, i1 false), !noalias !511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !511
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 536
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 544
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 488
  store i64 -1, ptr %i.bb, align 8, !alias.scope !515, !noalias !511
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  store i64 -1, ptr %i.bc, align 8, !alias.scope !515, !noalias !511
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 596
  store i8 -1, ptr %i.bd, align 4, !alias.scope !515, !noalias !511
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  store i64 -1, ptr %i.be, align 8, !alias.scope !515, !noalias !511
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 104 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !alias.scope !515, !noalias !511
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 592
  store i32 0, ptr %i.bg, align 8, !alias.scope !515, !noalias !511
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 584
  store i32 -1, ptr %i.bh, align 8, !alias.scope !515, !noalias !511
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 552
  store ptr null, ptr %i.bi, align 8, !alias.scope !515, !noalias !511
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 296
  store i64 0, ptr %i.bj, align 8, !alias.scope !515, !noalias !511
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 312
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  store i64 0, ptr %i.ag, align 8, !alias.scope !515, !noalias !511
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.bk, align 8, !alias.scope !515, !noalias !511
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 588 ; 2 uses
  store i32 -1, ptr %i.bl, align 4, !alias.scope !515, !noalias !511
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 368
  store i64 0, ptr %i.bm, align 8, !alias.scope !515, !noalias !511
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 384
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 432
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 568 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !alias.scope !515, !noalias !511
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 0, ptr %i.bo, align 8, !alias.scope !515, !noalias !511
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store i64 0, ptr %i.bp, align 8, !alias.scope !515, !noalias !511
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 456
  %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.558.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !515, !noalias !511
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 480
  store i64 0, ptr %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !515, !noalias !511
  store ptr @11, ptr %i.az, align 8, !noalias !511
  store i64 4, ptr %i.ba, align 8, !noalias !511
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !518
  store i64 0, ptr %i.l, align 8, !alias.scope !519, !noalias !518
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @20, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !520
  %.sroa.4205.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 4, ptr %.sroa.4205.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !519, !noalias !520
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l) #19, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !518
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 344 ; 3 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq) #19, !noalias !521
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq) #19, !noalias !521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0130.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i64 80, i1 false), !noalias !511
  %.sroa.2131.0.copyload.i = load i64, ptr %i.be, align 8, !alias.scope !522, !noalias !523
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %.sroa.4133.0.copyload.i = load ptr, ptr %.sroa.4133.0..sroa_idx.i, align 8, !alias.scope !522, !noalias !523 ; 4 uses
  %.sroa.6135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.6135.0.copyload.i = load ptr, ptr %.sroa.6135.0..sroa_idx.i, align 8, !alias.scope !522, !noalias !523 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(448) %i.bf, i64 448, i1 false), !noalias !511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !noalias !511
  %.sroa.11.0.copyload.i = load i64, ptr %i.bl, align 4, !alias.scope !522, !noalias !523
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx.i, i64 3, i1 false), !noalias !511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !511
  store i64 0, ptr %i.af, align 8, !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !524
  call void @_RNvXsf_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtB7_12value_parser11ValueParserINtB5_14IntoResettableBV_E15into_resettableCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n) #19, !noalias !525
  %i.br = load i64, ptr %i.k, align 8, !range !10, !noalias !524, !noundef !5 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  %.sroa.4.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bt = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i17.i, align 8, !noalias !511
  %i.bu = insertelement <2 x i1> poison, i1 %i.bs, i64 0
  %i.bv = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x ptr> undef, <2 x ptr> %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !524
  %.sroa.2131.0.copyload.off.i = add i64 %.sroa.2131.0.copyload.i, -4
  %switch.i = icmp ult i64 %.sroa.2131.0.copyload.off.i, -5
  br i1 %switch.i, label %bb.c, label %_RINvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs1SGmE4BlMHt_4iox2.exit.i

bb.c:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_group8ArgGroupE8push_mutCs1SGmE4BlMHt_4iox2.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6135.0.copyload.i) ]
  %i.bx = load ptr, ptr %.sroa.6135.0.copyload.i, align 8, !invariant.load !5, !noalias !526 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4133.0.copyload.i) ]
  call void %i.bx(ptr noundef nonnull %.sroa.4133.0.copyload.i) #18, !noalias !526, !inline_history !447
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.6135.0.copyload.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !11, !invariant.load !5, !noalias !526 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs1SGmE4BlMHt_4iox2.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.6135.0.copyload.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !7, !invariant.load !5, !noalias !526
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4133.0.copyload.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4133.0.copyload.i, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #19, !noalias !526
  br label %_RINvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs1SGmE4BlMHt_4iox2.exit.i

_RINvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs1SGmE4BlMHt_4iox2.exit.i: ; preds = %bb.f, %bb.e, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_group8ArgGroupE8push_mutCs1SGmE4BlMHt_4iox2.exit.i
  %.sroa.11.sroa.0.0.insert.insert.i = and i64 %.sroa.11.0.copyload.i, -4294967297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0130.i, i64 80, i1 false), !noalias !511
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 %i.br, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store <2 x ptr> %i.bw, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(448) %.sroa.7.i, i64 448, i1 false), !noalias !511
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 552
  store ptr @11, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 560
  store i64 4, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !511
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 584
  store i32 108, ptr %.sroa.4120.0..sroa_idx.i, align 8, !noalias !511
  %.sroa.5.0..sroa_idx123.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 588
  store i64 %.sroa.11.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx123.i, align 4, !noalias !511
  %.sroa.5126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 596
  store i8 2, ptr %.sroa.5126.0..sroa_idx.i, align 4, !noalias !511
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.i, i64 3, i1 false), !noalias !511
end_hunk_0
