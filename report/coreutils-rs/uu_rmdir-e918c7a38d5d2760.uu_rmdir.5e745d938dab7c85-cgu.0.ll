Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_rmdir-e918c7a38d5d2760.uu_rmdir.5e745d938dab7c85-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty:bb.a
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.g, 32
  %i.m = trunc nuw i64 %i.l to i32
  switch i32 %i.m, label %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i [
    i32 39, label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit
    i32 17, label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit
    i32 13, label %bb.d
    i32 16, label %bb.d
    i32 1, label %bb.d
    i32 30, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !181
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8read_dir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19, !noalias !182
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !183, !noalias !181, !noundef !4 ; 2 uses
  %.sink2.i.i = load ptr, ptr %i.e, align 8, !noalias !181, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !181
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !184
  store ptr %.sink2.i.i, ptr %i.d, align 8, !noalias !184
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.o, ptr %i.q, align 8, !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !184
  call void @_RNvXsz_NtCs2vKOLqTMYjT_3std2fsNtB5_7ReadDirNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #19, !noalias !184
  %i.r = load i64, ptr %i.c, align 8, !range !6, !noalias !184, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.s = icmp ne i64 %i.r, 0                      ; 2 uses
  br i1 %i.s, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !187, !noalias !184, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !190
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #18, !noalias !184
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !191, !noalias !184, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !191, !noalias !184, !noundef !4 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i, align 1, !noalias !184
  %i.z = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #19, !noalias !184
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !187, !noalias !184, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !192
  %i.ab = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.ac = and i64 %i.ab, 3
  switch i64 %i.ac, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i
    i64 1, label %bb.k
  ], !prof !180

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.ab, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !193, !noalias !192
  store i8 3, ptr %i.b, align 8, !alias.scope !193, !noalias !192
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #19, !noalias !192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !184
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.ai = load ptr, ptr %i.d, align 8, !alias.scope !198, !noalias !184, !nonnull !4, !noundef !4
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !199
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #18, !noalias !184
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !184
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

.thread.i.i:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !200
  %i.al = ptrtoint ptr %.sink2.i.i to i64         ; 2 uses
  %i.am = and i64 %i.al, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i
    i64 1, label %bb.o
  ], !prof !180

bb.n:                                             ; preds = %.thread.i.i
  %i.an = icmp ult ptr %.sink2.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.al, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.an)
  call void @llvm.assume(i1 %i.ap)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i

bb.o:                                             ; preds = %.thread.i.i
  %i.aq = getelementptr i8, ptr %.sink2.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !201, !noalias !200
  store i8 3, ptr %i.a, align 8, !alias.scope !201, !noalias !200
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #19, !noalias !200
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i: ; preds = %bb.o, %bb.n, %.thread.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !200
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i: ; preds = %bb.c
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i, %bb.m, %bb.c, %bb.c
  %.sroa.0.0 = phi i1 [ false, %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i ], [ %i.s, %bb.m ], [ true, %bb.c ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i ], [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = and i24 %3, 65536
  %.not = icmp eq i24 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41, %bb.a
  %i.n = call noundef ptr @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs10remove_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19 ; 2 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.aa, label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !219
  %i.o = tail call noundef dereferenceable_or_null(5) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 5, i64 noundef 1) #19, !noalias !219 ; 8 uses
  %i.p = icmp eq ptr %i.o, null                   ; 3 uses
  %.sink6.i = select i1 %i.p, i64 1, i64 5        ; 2 uses
  %.sink.i = select i1 %i.p, ptr inttoptr (i64 5 to ptr), ptr %i.o ; 3 uses
  br i1 %i.p, label %bb.d, label %.lr.ph150.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #22
  unreachable

.lr.ph150.i:                                      ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.o, ptr noundef nonnull align 1 dereferenceable(5) @7, i64 5, i1 false)
  %i.q = load i8, ptr %i.o, align 1, !alias.scope !220, !noalias !221, !noundef !4
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %.lr.ph150.i.1, label %.loopexit75

.lr.ph150.i.1:                                    ; preds = %.lr.ph150.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !220, !noalias !221, !noundef !4
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %.lr.ph150.i.2, label %.loopexit75

.lr.ph150.i.2:                                    ; preds = %.lr.ph150.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !220, !noalias !221, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %.lr.ph150.i.3, label %.loopexit75

.lr.ph150.i.3:                                    ; preds = %.lr.ph150.i.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !220, !noalias !221, !noundef !4
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %.lr.ph150.i.4, label %.loopexit75

.lr.ph150.i.4:                                    ; preds = %.lr.ph150.i.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !220, !noalias !221, !noundef !4
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.loopexit75

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %.lr.ph150.i.4
  %narrow = mul nuw nsw i32 %i.s, 10
  %narrow141 = add nuw nsw i32 %narrow, %i.x
  %narrow142 = mul nuw nsw i32 %narrow141, 10
  %narrow143 = add nuw nsw i32 %narrow142, %i.ac
  %narrow144 = mul nuw nsw i32 %narrow143, 10
  %narrow145 = add nuw nsw i32 %narrow144, %i.ah
  %i.ao = zext nneg i32 %narrow145 to i64
  %i.ap = mul nuw nsw i64 %i.ao, 10
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, i64 noundef %i.ar) #19
  br label %bb.e

.loopexit75:                                      ; preds = %.lr.ph150.i.4, %.lr.ph150.i.3, %.lr.ph150.i.2, %.lr.ph150.i.1, %.lr.ph150.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink.i, i64 noundef 5) #18
  %i.as = load i8, ptr %i.j, align 8, !range !222, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.t, label %bb.u

bb.e:                                             ; preds = %bb.u, %bb.t, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.04.0 = phi i1 [ false, %bb.t ], [ true, %bb.u ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.511.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 1, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !223
  store i64 0, ptr %i.c, align 8, !noalias !223
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !223
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !223
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.av, align 8, !noalias !223
  store ptr %i.c, ptr %i.b, align 8, !noalias !223
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @22, ptr %i.aw, align 8, !noalias !223
  %i.ax = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19, !noalias !224
  br i1 %i.ax, label %bb.f, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20, !noalias !224
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %bb.e
  %.sroa.049.0.copyload50 = load i64, ptr %i.c, align 8, !noalias !225 ; 3 uses
  %.sroa.551.0.copyload53 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !225, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.855.0.copyload57 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !225 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  switch i64 %.sroa.855.0.copyload57, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit
  %i.ay = load i8, ptr %.sroa.551.0.copyload53, align 1, !alias.scope !226, !noalias !227, !noundef !4 ; 2 uses
  switch i8 %i.ay, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit
  %.pr.i36 = load i8, ptr %.sroa.551.0.copyload53, align 1, !alias.scope !226, !noalias !227
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.az = phi i8 [ %.pr.i36, %thread-pre-split.i ], [ %i.ay, %bb.g ]
  switch i8 %i.az, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.551.0.copyload53, i64 1
  %i.bb = add nsw i64 %.sroa.855.0.copyload57, -1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.551.0.copyload53, i64 1 ; 2 uses
  %i.bd = add nsw i64 %.sroa.855.0.copyload57, -1 ; 3 uses
  %i.be = icmp samesign ult i64 %.sroa.855.0.copyload57, 17
  br i1 %i.be, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.j
  %.not103137.i = icmp eq i64 %i.bd, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph141.i24

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.bf, %bb.m ], [ %i.bc, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.bg, %bb.m ], [ %i.bd, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.br, %bb.m ], [ 0, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.bg = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 0
  %i.bj = extractvalue { i64, i1 } %i.bh, 1
  br i1 %i.bj, label %.loopexit, label %bb.k, !prof !7

bb.k:                                             ; preds = %.lr.ph.i
  %i.bk = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !226, !noalias !227, !noundef !4
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bi, i64 %i.bo) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  br i1 %i.bq, label %.loopexit, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.br = extractvalue { i64, i1 } %i.bp, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.bg, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph.i

.lr.ph141.i24:                                    ; preds = %.preheader114.i, %bb.n
  %.sroa.0.2140.i25 = phi ptr [ %i.by, %bb.n ], [ %i.bc, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i26 = phi i64 [ %i.bx, %bb.n ], [ %i.bd, %.preheader114.i ]
  %.sroa.084.2138.i27 = phi i64 [ %i.ca, %bb.n ], [ 0, %.preheader114.i ]
  %i.bs = load i8, ptr %.sroa.0.2140.i25, align 1, !alias.scope !226, !noalias !227, !noundef !4
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 10
  br i1 %i.bv, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph141.i24
  %i.bw = mul i64 %.sroa.084.2138.i27, 10
  %i.bx = add nsw i64 %.sroa.26.2139.i26, -1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i25, i64 1
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = sub i64 %i.bw, %i.bz                    ; 2 uses
  %.not103.i28 = icmp eq i64 %i.bx, 0
  br i1 %.not103.i28, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph141.i24

bb.o:                                             ; preds = %bb.i, %bb.h
  %.sroa.26.0.i29 = phi i64 [ %i.bb, %bb.i ], [ %.sroa.855.0.copyload57, %bb.h ] ; 4 uses
  %.sroa.0.0.i30 = phi ptr [ %i.ba, %bb.i ], [ %.sroa.551.0.copyload53, %bb.h ] ; 2 uses
  %i.cb = icmp samesign ult i64 %.sroa.26.0.i29, 16
  br i1 %i.cb, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.o
  %.not105146.i = icmp eq i64 %.sroa.26.0.i29, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph150.i31

.preheader111.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i = phi ptr [ %i.cc, %bb.r ], [ %.sroa.0.0.i30, %bb.o ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.cd, %bb.r ], [ %.sroa.26.0.i29, %bb.o ]
  %.sroa.084.3143.i = phi i64 [ %i.co, %bb.r ], [ 0, %bb.o ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.cd = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ce = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 0
  %i.cg = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cg, label %.loopexit, label %bb.p, !prof !7

bb.p:                                             ; preds = %.preheader111.i
  %i.ch = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !226, !noalias !227, !noundef !4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cf, i64 %i.cl) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %.loopexit, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.co = extractvalue { i64, i1 } %i.cm, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.cd, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.preheader111.i

.lr.ph150.i31:                                    ; preds = %.preheader.i, %bb.s
  %.sroa.0.4149.i32 = phi ptr [ %i.cv, %bb.s ], [ %.sroa.0.0.i30, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i33 = phi i64 [ %i.cu, %bb.s ], [ %.sroa.26.0.i29, %.preheader.i ]
  %.sroa.084.4147.i34 = phi i64 [ %i.cx, %bb.s ], [ 0, %.preheader.i ]
  %i.cp = load i8, ptr %.sroa.0.4149.i32, align 1, !alias.scope !226, !noalias !227, !noundef !4
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 10
  br i1 %i.cs, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph150.i31
  %i.ct = mul i64 %.sroa.084.4147.i34, 10
  %i.cu = add nsw i64 %.sroa.26.4148.i33, -1      ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i32, i64 1
  %i.cw = zext nneg i32 %i.cr to i64
  %i.cx = add i64 %i.ct, %i.cw                    ; 2 uses
  %.not105.i35 = icmp eq i64 %i.cu, 0
  br i1 %.not105.i35, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph150.i31

bb.t:                                             ; preds = %.loopexit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sink6.i, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sink.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 5, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

bb.u:                                             ; preds = %.loopexit75
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, double noundef %i.cz) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

.loopexit:                                        ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i24, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i31, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.551.0.copyload53, i64 noundef %.sroa.855.0.copyload57) #18
  %i.da = load i8, ptr %i.g, align 8, !range !222, !noundef !4
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.w, label %bb.x

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i, %.preheader114.i
  %.sroa.1561.0 = phi i64 [ %i.cx, %bb.s ], [ %i.ca, %bb.n ], [ %i.co, %bb.r ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.br, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4, i64 noundef %.sroa.1561.0) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dc = icmp eq i64 %.sroa.049.0.copyload50, 0
  br i1 %i.dc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.v
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0.copyload53, i64 noundef %.sroa.049.0.copyload50, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !228
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit

bb.w:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.049.0.copyload50, ptr %i.f, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.551.0.copyload53, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.855.0.copyload57, ptr %.sroa.855.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit

bb.x:                                             ; preds = %.loopexit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.de = load double, ptr %i.dd, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4, double noundef %i.de) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.v, %bb.w
  br i1 %.sroa.04.0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit45, label %bb.y

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit45, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %.val.i38 = load i64, ptr %i.l, align 8, !range !5, !alias.scope !229, !noundef !4 ; 2 uses
  %i.df = icmp eq i64 %.val.i38, 0
  br i1 %i.df, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i39

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i39: ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i40 = load ptr, ptr %i.dg, align 8, !alias.scope !229, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i40, i64 noundef %.val.i38, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !229
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41: ; preds = %bb.y, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit45: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i, i64 noundef %.sink6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !230
  br label %bb.y

bb.z:                                             ; preds = %bb.b
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %bb.z
  store ptr %i.n, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define { ptr, i64 } @_RNvCs86MjTkXjVIv_8uu_rmdir32strip_trailing_slashes_from_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 {
.split:
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.a
  %.sroa.0.013 = phi i64 [ %i.a, %bb.a ], [ %1, %.split ] ; 2 uses
  %i.a = add nsw i64 %.sroa.0.013, -1             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !noundef !4
  %i.d = icmp eq i8 %i.c, 47
  br i1 %i.d, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %.split
  %.sroa.0.0.lcssa = phi i64 [ %1, %.split ], [ %.sroa.0.013, %.lr.ph ], [ %i.a, %bb.a ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.0.0.lcssa, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs86MjTkXjVIv_8uu_rmdir6remove(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) #19
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = and i24 %3, 256
  %.not27 = icmp eq i24 %i.d, 0
  br i1 %.not27, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %.not2830 = icmp eq ptr %i.f, null
  %i.h = icmp eq i64 %i.g, 0
  %or.cond31 = select i1 %.not2830, i1 true, i1 %i.h
  br i1 %or.cond31, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.i = phi i64 [ %i.n, %bb.e ], [ %i.g, %.preheader ] ; 2 uses
  %i.j = phi ptr [ %i.m, %bb.e ], [ %i.f, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i, i24 %3) #19
  %i.k = load ptr, ptr %i.a, align 8, !noundef !4
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i) #19 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %.not28 = icmp eq ptr %i.m, null
  %i.o = icmp eq i64 %i.n, 0
  %or.cond = select i1 %.not28, i1 true, i1 %i.o
  br i1 %or.cond, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.d, %.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs86MjTkXjVIv_8uu_rmdir6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs86MjTkXjVIv_8uu_rmdir.exit:
  %i.a = alloca [640 x i8], align 8               ; 56 uses
  %i.b = alloca [640 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 53 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [640 x i8], align 8               ; 53 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [712 x i8], align 8               ; 57 uses
  %i.n = alloca [712 x i8], align 8               ; 5 uses
  %i.o = alloca [712 x i8], align 8               ; 5 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 5) #19
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !alias.scope !276, !noalias !277 ; 2 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.q, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.q, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 11) #19
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.k, align 8, !alias.scope !278, !noalias !279 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i9, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.i8.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i10, align 8
  %.sroa.5.i8.sroa.4.0..sroa.55.0..sroa_idx.i10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.i8.sroa.4.0.copyload = load i64, ptr %.sroa.5.i8.sroa.4.0..sroa.55.0..sroa_idx.i10.sroa_idx, align 8
  %.sroa.5.i8.sroa.0.0 = select i1 %i.r, ptr undef, ptr %.sroa.5.i8.sroa.0.0.copyload
  %.sroa.5.i8.sroa.4.0 = select i1 %i.r, i64 undef, i64 %.sroa.5.i8.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 11) #19
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v) #19
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.j, align 8, !alias.scope !280, !noalias !281 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload.i16, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.i15.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i17, align 8
  %.sroa.5.i15.sroa.4.0..sroa.55.0..sroa_idx.i17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.i15.sroa.4.0.copyload = load i64, ptr %.sroa.5.i15.sroa.4.0..sroa.55.0..sroa_idx.i17.sroa_idx, align 8
  %.sroa.5.i15.sroa.0.0 = select i1 %i.w, ptr undef, ptr %.sroa.5.i15.sroa.0.0.copyload
  %.sroa.5.i15.sroa.4.0 = select i1 %i.w, i64 undef, i64 %.sroa.5.i15.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.m, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 208
end_hunk_0
