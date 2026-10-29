Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.7?download=true
inline.NumInlined: 63
inline.NumDeleted: 45
begin_hunk_0_@_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator9push_node:bb.a
  %or.cond89 = or i1 %i.ck, %i.cj
  br i1 %or.cond89, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie12ExportSymbolEEB15_.exit61, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0, i64 noundef range(i64 1, 0) %.sroa.14.0, i64 noundef 1) #19, !noalias !66
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie12ExportSymbolEEB15_.exit61

bb.ao:                                            ; preds = %bb.g
  %i.cl = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = add nsw i64 %i.y, -1                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cn, ptr %i.d, align 8, !captures !10
  store i64 %i.cm, ptr %i.n, align 8
  %i.co = load i8, ptr %i.cl, align 1, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !5 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !67, !noundef !5 ; 3 uses
  %i.cu = load i64, ptr %1, align 8, !range !11, !alias.scope !67, !noundef !5
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %bb.aq unwind label %bb.ak

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !67, !nonnull !5, !noundef !5
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %i.ct ; 5 uses
  store ptr %i.cn, ptr %i.cy, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.cm, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i64 %i.cq, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i8 %i.co, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cz = add i64 %i.ct, 1
  store i64 %i.cz, ptr %i.cs, align 8, !alias.scope !67
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.679.0..sroa_idx, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.11.0, ptr %.sroa.780.0..sroa_idx, align 8
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.14.0, ptr %.sroa.881.0..sroa_idx, align 8
  %.sroa.982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.17.0, ptr %.sroa.982.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie12ExportSymbolEEB15_.exit61

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie12ExportSymbolEEB15_.exit61: ; preds = %bb.b, %bb.d, %bb.an, %bb.am, %bb.h, %bb.ab, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe6importNtB5_20DelayLoadImportTable4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !noundef !5
  %i.e = sub i32 %2, %i.d
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.k = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !72, !nonnull !5, !noundef !5
  %i.l = tail call { i64, ptr } %i.k(i8 noundef 0, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j), !noalias !72, !inline_history !0 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw i64 %i.b, %i.f
  %i.p = extractvalue { i64, ptr } %i.l, 1
  %i.q = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.p, ptr noundef nonnull readonly %i.i), !noalias !73 ; 2 uses
  %.not.i.i = icmp ult i64 %i.q, %i.o
  tail call void @llvm.assume(i1 %.not.i.i)
  br label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread: ; preds = %bb.a, %bb.b, %bb.c
  %.sink9 = phi ptr [ %i.i, %bb.c ], [ @2, %bb.b ], [ @2, %bb.a ]
  %.sink = phi i64 [ %i.q, %bb.c ], [ 33, %bb.b ], [ 33, %bb.a ]
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink9, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe6importNtB5_20DelayLoadImportTable9hint_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = sub i32 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.f = zext i32 %i.c to i64                     ; 3 uses
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.i = icmp samesign ult i64 %i.h, 2
  br i1 %i.i, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 3 uses
  %.sroa.029.0.copyload = load i16, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %i.j, i64 %i.e
  %i.n = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !78, !nonnull !5, !noundef !5
  %i.o = tail call { i64, ptr } %i.n(i8 noundef 0, ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.m), !noalias !78, !inline_history !0 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit: ; preds = %bb.c
  %i.r = add nsw i64 %i.h, -2
  %i.s = extractvalue { i64, ptr } %i.o, 1
  %i.t = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.s, ptr noundef nonnull readonly %i.l), !noalias !79 ; 3 uses
  %.not.i.i = icmp ult i64 %i.t, %i.r
  tail call void @llvm.assume(i1 %.not.i.i)
  %.not5.i = icmp eq i64 %i.t, 0
  br i1 %.not5.i, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.029.0.copyload, ptr %i.u, align 8
  br label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread: ; preds = %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit, %bb.c, %bb.b, %bb.a, %bb.d
  %.sink48 = phi i64 [ 16, %bb.d ], [ 8, %bb.b ], [ 8, %bb.a ], [ 8, %bb.c ], [ 8, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ]
  %.sink46 = phi ptr [ %i.l, %bb.d ], [ @20, %bb.b ], [ @21, %bb.a ], [ @19, %bb.c ], [ @19, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ]
  %.sink45 = phi i64 [ 24, %bb.d ], [ 16, %bb.b ], [ 16, %bb.a ], [ 16, %bb.c ], [ 16, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ]
  %.sink43 = phi i64 [ %i.t, %bb.d ], [ 39, %bb.b ], [ 42, %bb.a ], [ 39, %bb.c ], [ 39, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ]
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sink48
  store ptr %.sink46, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink45
  store i64 %.sink43, ptr %i.w, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe6importNtB5_27DelayLoadDescriptorIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 32
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.e, align 8
  store i8 1, ptr %i.a, align 8
  store ptr @22, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 44, ptr %i.h, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.f, -32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.j, ptr %1, align 8, !captures !10
  store i64 %i.i, ptr %i.e, align 8
  %i.k = load <4 x i32>, ptr %i.d, align 1, !alias.scope !82
  %.fr = freeze <4 x i32> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.05.0.copyload.i = load i32, ptr %i.l, align 1, !alias.scope !82
  %.sroa.05.0.copyload.i.fr = freeze i32 %.sroa.05.0.copyload.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.06.0.copyload.i = load i32, ptr %i.m, align 1, !alias.scope !82
  %.sroa.06.0.copyload.i.fr = freeze i32 %.sroa.06.0.copyload.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.07.0.copyload.i = load i32, ptr %i.n, align 1, !alias.scope !82
  %i.o = icmp eq i32 %.sroa.07.0.copyload.i, 0
  %i.p = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, 0
  %2 = or i32 %.sroa.06.0.copyload.i.fr, %.sroa.05.0.copyload.i.fr
  %3 = icmp eq i32 %2, 0
  %4 = and i1 %i.r, %3
  %op.rdx6 = select i1 %4, i1 %i.o, i1 false
  br i1 %op.rdx6, label %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit, label %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.thread

_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.08.0.copyload.i = load i32, ptr %i.s, align 1, !alias.scope !82
  %i.t = icmp eq i32 %.sroa.08.0.copyload.i, 0
  br i1 %i.t, label %bb.f, label %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.thread

_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.thread: ; preds = %bb.e, %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.u, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit
  store i8 1, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.thread, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read2pe6importNtB4_24ImportDescriptorIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 20
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.e, align 8
  store i8 1, ptr %i.a, align 8
  store ptr @23, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 33, ptr %i.h, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.f, -20
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store ptr %i.j, ptr %1, align 8, !captures !10
  store i64 %i.i, ptr %i.e, align 8
  %.sroa.01.0.copyload = load i32, ptr %i.d, align 1
  %i.k = icmp eq i32 %.sroa.01.0.copyload, 0
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.02.0.copyload = load i32, ptr %i.l, align 1
  %i.m = icmp eq i32 %.sroa.02.0.copyload, 0
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.03.0.copyload = load i32, ptr %i.n, align 1
  %i.o = icmp eq i32 %.sroa.03.0.copyload, 0
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.04.0.copyload = load i32, ptr %i.p, align 1
  %i.q = icmp eq i32 %.sroa.04.0.copyload, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.05.0.copyload = load i32, ptr %i.r, align 1
  %i.s = icmp eq i32 %.sroa.05.0.copyload, 0
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.t, align 8
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16), (50, 51)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.f, 4                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %. = select i1 %i.i, i8 2, i8 3
  %i.j = trunc i64 %i.f to i8
  %i.k = and i8 %i.j, 3
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.m = load i64, ptr %i.b, align 8, !noundef !5
  %.lobit = lshr exact i64 %i.h, 2
  %i.n = trunc nuw nsw i64 %.lobit to i8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 %i.g, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %., ptr %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx, align 8
  %.sroa.610.sroa.5.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.k, ptr %.sroa.610.sroa.5.0..sroa.610.0..sroa_idx.sroa_idx, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink20 = phi ptr [ %i.l, %bb.b ], [ @24, %bb.a ]
  %.sink19 = phi i64 [ %i.m, %bb.b ], [ 23, %bb.a ]
  %.sink = phi i8 [ %i.n, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sink20, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink19, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sink, ptr %i.p, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 0, 4785070309113859) i64 @_RNvXNtNtCskKLDkoKarTP_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters3map3MapINtNtNtB6_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1V_12LittleEndianEENCNvMs2_NtNtNtB1X_4read2pe8resourceNtB2X_12ResourceName15to_string_lossy0EENtNtNtB11_6traits8iterator8Iterator4nextB1X_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !range !91, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  store i16 0, ptr %i.a, align 8
  %i.e = trunc nuw i16 %i.b to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !93, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !93, !nonnull !5, !noundef !5
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1p_12LittleEndianEENCNvMs2_NtNtNtB1r_4read2pe8resourceNtB2r_12ResourceName15to_string_lossy0ENtNtNtB9_6traits8iterator8Iterator4nextB1r_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.j, ptr %0, align 8, !alias.scope !93
  %.val.i = load i16, ptr %i.f, align 1, !noalias !92
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.020.0 = phi i16 [ %.val.i, %bb.c ], [ %i.d, %bb.a ] ; 7 uses
  %i.k = and i16 %.sroa.020.0, -2048
  %or.cond = icmp eq i16 %i.k, -10240
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.428.4.insert.ext = zext i16 %.sroa.020.0 to i64
  %.sroa.428.4.insert.shift = shl nuw nsw i64 %.sroa.428.4.insert.ext, 16
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next:bb.a
  br i1 %i.ax, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i8, ptr %i.aa, align 8, !noalias !120, !noundef !5
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.aa, align 8, !noalias !120
  %i.ba = load i64, ptr %i.i, align 8, !alias.scope !126, !noundef !5 ; 5 uses
  %i.bb = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !126, !noundef !5
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = icmp ugt i64 %i.ap, %i.bc
  br i1 %i.bd, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i, !prof !9

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.thread.i.i: ; preds = %bb.i
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.ba, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1), !noalias !121
  %i.be = load i64, ptr %i.i, align 8, !alias.scope !127, !noundef !5 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  tail call void @llvm.assume(i1 %i.bf)
  br label %bb.j

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i: ; preds = %bb.i
  %i.bg = icmp sgt i64 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bg)
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseHTIzroA4w0_6object.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.thread.i.i
  %i.bh = phi i64 [ %i.be, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.thread.i.i ], [ %i.ba, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !127, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %i.ad, i64 %i.ap, i1 false), !noalias !121
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !127
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !118
  %.pre23 = load i64, ptr %i.g, align 8, !alias.scope !118
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseHTIzroA4w0_6object.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseHTIzroA4w0_6object.exit.i: ; preds = %bb.j, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i
  %i.bl = phi i64 [ %.pre23, %bb.j ], [ %i.r, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i ] ; 2 uses
  %i.bm = phi ptr [ %.pre, %bb.j ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i ] ; 2 uses
  %i.bn = phi i64 [ %.pre.i.i, %bb.j ], [ %i.ba, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object.exit.i.i ]
  %i.bo = add i64 %i.bn, %i.ap
  store i64 %i.bo, ptr %i.i, align 8, !alias.scope !127
  %.idx = mul nuw nsw i64 %i.bl, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not.not.not.i.not.i39 = icmp eq i64 %i.bl, 0
  br i1 %.not.not.not.i.not.i39, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_NtBS_12NodeIterator4next0EBY_.exit.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_NtBS_12NodeIterator4next0EBY_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseHTIzroA4w0_6object.exit.i, %bb.k
  %i.br = phi ptr [ %i.bq, %bb.k ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseHTIzroA4w0_6object.exit.i ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val2.i.i = load i64, ptr %i.bs, align 8, !noalias !128, !noundef !5
  %i.bt = icmp eq i64 %.val2.i.i, %i.aw
  br i1 %i.bt, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread, label %bb.k

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_NtBS_12NodeIterator4next0EBY_.exit.i: ; preds = %bb.k, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseHTIzroA4w0_6object.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120
  call fastcc void @_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator9push_node(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.aw), !noalias !121
  %i.bu = load i64, ptr %i.a, align 8, !range !122, !noalias !120, !noundef !5 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !120
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noalias !120
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_NtBS_12NodeIterator4next0EBY_.exit.i
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.662.0..sroa_idx.i, i64 32, i1 false), !noalias !118
  br label %bb.m

bb.m:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_NtBS_12NodeIterator4next0EBY_.exit.i, %bb.l
  %.sink81.i = phi i64 [ %i.bu, %bb.l ], [ -3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_NtBS_12NodeIterator4next0EBY_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit

bb.n:                                             ; preds = %bb.b
  %.sroa.658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.658.0..sroa_idx.i, i64 32, i1 false), !noalias !118
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n
  %.sink.i = phi i64 [ %i.k, %bb.n ], [ -3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit

_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit: ; preds = %bb.m, %bb.o
  %.sroa.16.0 = phi i64 [ %i.p, %bb.o ], [ %i.bz, %bb.m ] ; 2 uses
  %.sroa.10.0 = phi ptr [ %i.n, %bb.o ], [ %i.bx, %bb.m ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sink.i, %bb.o ], [ %.sink81.i, %bb.m ] ; 2 uses
  switch i64 %.sroa.0.0, label %bb.p [
    i64 -3, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread
    i64 -2, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread14
  ]

_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread: ; preds = %.lr.ph, %bb.h, %bb.g, %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit
  %.sroa.10.012 = phi ptr [ %.sroa.10.0, %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit ], [ @7, %bb.g ], [ @6, %bb.h ], [ @6, %.lr.ph ] ; 2 uses
  %.sroa.16.011 = phi i64 [ %.sroa.16.0, %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit ], [ 32, %bb.g ], [ 33, %bb.h ], [ 33, %.lr.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.012) ]
  store i64 -2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.012, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.011, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22, i64 32, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.q

_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread14: ; preds = %bb.f, %.preheader.i, %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit
  store i64 -3, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread14, %bb.p, %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIterator4next.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !8, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseHTIzroA4w0_6object.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #17
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseHTIzroA4w0_6object.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read2pe6importNtB5_27DelayLoadDescriptorIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !alias.scope !134, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !alias.scope !134, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !134, !noundef !5 ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 32
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.f, -32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.i, ptr %1, align 8, !alias.scope !134, !captures !10
  store i64 %i.h, ptr %i.e, align 8, !alias.scope !134
  %i.j = load <4 x i32>, ptr %i.d, align 1, !alias.scope !135, !noalias !136
  %.fr = freeze <4 x i32> %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.05.0.copyload.i.i = load i32, ptr %i.k, align 1, !alias.scope !135, !noalias !136
  %.sroa.05.0.copyload.i.i.fr = freeze i32 %.sroa.05.0.copyload.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.06.0.copyload.i.i = load i32, ptr %i.l, align 1, !alias.scope !135, !noalias !136
  %.sroa.06.0.copyload.i.i.fr = freeze i32 %.sroa.06.0.copyload.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.m, align 1, !alias.scope !135, !noalias !136
  %i.n = icmp eq i32 %.sroa.07.0.copyload.i.i, 0
  %i.o = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, 0
  %2 = or i32 %.sroa.06.0.copyload.i.i.fr, %.sroa.05.0.copyload.i.i.fr
  %3 = icmp eq i32 %2, 0
  %4 = and i1 %i.q, %3
  %op.rdx11 = select i1 %4, i1 %i.n, i1 false
  br i1 %op.rdx11, label %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i, label %bb.f

_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.08.0.copyload.i.i = load i32, ptr %i.r, align 1, !alias.scope !135, !noalias !136
  %i.s = icmp eq i32 %.sroa.08.0.copyload.i.i, 0
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i
  store i8 1, ptr %i.a, align 8, !alias.scope !134
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !134
  store i64 0, ptr %i.e, align 8, !alias.scope !134
  store i8 1, ptr %i.a, align 8, !alias.scope !134
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @22, ptr %i.t, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 44, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e
  %.sink = phi i64 [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB4_19ExportsTrieIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !140
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noalias !141, !noundef !5 ; 2 uses
  %.not38.i = icmp eq i64 %i.b, -3
  br i1 %.not38.i, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ %i.b, %.lr.ph.i ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !141 ; 3 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !141 ; 2 uses
  switch i64 %i.c, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit [
    i64 -2, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread11
    i64 -1, label %bb.c
  ]

_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread11: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !140
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !141, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.d, -3
  br i1 %.not.i, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread, label %bb.b

_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  br label %bb.d

_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit: ; preds = %bb.b
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread, %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit, %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread11
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !146, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !146
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !alias.scope !146, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = add nsw i64 %i.e, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.i, ptr %1, align 8, !alias.scope !146, !captures !10
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !146
  %i.j = load i8, ptr %i.g, align 1, !noalias !147, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !146, !noundef !5 ; 2 uses
  %i.m = and i8 %i.l, 7
  %notmask.i = shl nsw i8 -1, %i.m
  %i.n = xor i8 %notmask.i, -1
  %i.o = and i8 %i.j, %i.n                        ; 3 uses
  %i.p = and i8 %i.j, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = and i8 %i.l, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = lshr i64 %i.q, %i.s                      ; 2 uses
  %i.u = icmp sgt i8 %i.j, -1
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !145 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.r, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.05.0.i = phi i64 [ %i.t, %bb.d ], [ %i.ao, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !146, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !146, !noundef !5
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = shl i64 %.sroa.05.0.i, %i.ad
  %i.af = add i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.y, align 8, !alias.scope !146
  %i.ag = and i8 %i.o, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = extractvalue { i64, i64 } %i.v, 1
  %i.aj = load i8, ptr %i.k, align 8, !alias.scope !146, !noundef !5
  %i.ak = sub i8 7, %i.aj
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl i64 %i.ai, %i.am
  %i.ao = or i64 %i.an, %i.t
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ap = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !145 ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.r, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.f
  %i.as = and i8 %i.o, 2
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.au = extractvalue { i64, i64 } %i.ap, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !146, !noundef !5
  %i.ax = trunc i64 %i.au to i32
  %i.ay = add i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.av, align 8, !alias.scope !146
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.az = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !145 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.bd = load i8, ptr %i.bc, align 2, !range !12, !alias.scope !146, !noundef !5
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = and i8 %i.o, 4
end_hunk_1
