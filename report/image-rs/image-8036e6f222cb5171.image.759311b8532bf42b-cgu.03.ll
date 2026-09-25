Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image:bb.a
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_22OnProgressChunksReaderINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuENtNtNtNtB1H_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(4400) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [4 x i8], align 4                 ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 17 uses
  %i.n = alloca [40 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [4 x i8], align 4                 ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [4 x i8], align 4                ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 16 uses
  %i.ad = alloca [32 x i8], align 8               ; 10 uses
  %i.ae = alloca [4 x i8], align 4                ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [96 x i8], align 8               ; 47 uses
  %i.ah = alloca [96 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.ai = alloca [96 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4368
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3242, !noalias !3243, !nonnull !7, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4352 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3242, !noalias !3243, !nonnull !7, !noundef !7 ; 3 uses
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.al, align 8, !alias.scope !3242, !noalias !3243
  %i.ap = load i64, ptr %i.am, align 8, !noalias !3244, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 20 uses
  %i.ar = tail call noundef ptr @_RNvMs4_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE7skip_toCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.ap), !noalias !3247 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.as, ptr noundef nonnull %i.ar), !noalias !3243
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3249)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4291
  %i.au = load i8, ptr %i.at, align 1, !range !14, !alias.scope !3250, !noalias !3251, !noundef !7
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3253
  store i32 0, ptr %i.ae, align 4, !noalias !3253
  %i.aw = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ae, i64 noundef 4), !noalias !3254 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %bb.e
  %i.ax = load i32, ptr %i.ae, align 4, !noalias !3253, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3253
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3253
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noundef nonnull %i.aw), !noalias !3255
  %.pr.i.i.i = load i64, ptr %i.af, align 8, !noalias !3252 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !3252 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i, label %bb.f

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i
  %i.ay = phi i32 [ %i.ax, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i ], [ %.pre.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3252
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.thread.i.i.i, label %bb.g

bb.f:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %.sroa.585.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.sroa.588.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.588.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.585.0..sroa_idx.i.i.i, i64 20, i1 false), !noalias !3256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3252
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.pr.i.i.i, ptr %i.ba, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.487.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %.pre.i.i.i, ptr %.sroa.487.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

.thread.i.i.i:                                    ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i, %bb.d
  %.sroa.018.0545.i.i.i = phi i32 [ %i.ay, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i ], [ 0, %bb.d ]
  %i.bb = zext nneg i32 %.sroa.018.0545.i.i.i to i64 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4280
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !3258, !noalias !3259, !noundef !7 ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %.sink12.i.i.i.i = select i1 %i.be, i64 %i.bg, i64 %i.bd
  %.not147.i.i.i = icmp ugt i64 %.sink12.i.i.i.i, %i.bb
  br i1 %.not147.i.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 2, ptr %i.bh, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4111.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 -1, ptr %.sroa.4111.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.5112.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @13, ptr %.sroa.5112.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.6113.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 22, ptr %.sroa.6113.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

bb.h:                                             ; preds = %.thread.i.i.i
  %i.bi = call noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4384) %1, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15), !noalias !3255 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 336
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !3255, !noundef !7 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1377
  %i.bm = load i8, ptr %i.bl, align 1, !range !12, !noalias !3255, !noundef !7
  %.not148.i.i.i = icmp eq i8 %i.bm, 2
  br i1 %.not148.i.i.i, label %switch.lookup, label %bb.j

bb.i:                                             ; preds = %.thread.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 2, ptr %i.bn, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 -1, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @13, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.425.sroa.5.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 22, ptr %.sroa.425.sroa.5.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

switch.lookup:                                    ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 1408
  %.sroa.0119.0.copyload.i.i.i = load i32, ptr %i.bo, align 8, !noalias !3255
  %i.bp = zext nneg i32 %.sroa.0119.0.copyload.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_22OnProgressChunksReaderINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuENtNtNtNtB1H_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image, i64 %i.bp
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 1384
  %i.br = load i64, ptr %i.bq, align 8, !noalias !3255, !noundef !7
  %i.bs = mul i64 %i.bk, %switch.ext
  %i.bt = mul i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 1420
  %i.bv = load i8, ptr %i.bu, align 4, !range !14, !noalias !3255, !noundef !7
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 1360
  %i.by = load i64, ptr %i.bx, align 8, !noalias !3255, !noundef !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 1368
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !3255, !noundef !7
  %i.cb = mul i64 %i.by, %i.bk
  %i.cc = mul i64 %i.cb, %i.ca                    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 1420
  %i.ce = load i8, ptr %i.cd, align 4, !range !14, !noalias !3255, !noundef !7
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.af, label %bb.ab

bb.k:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3261
  store i32 0, ptr %i.ab, align 4, !noalias !3261
  %i.cg = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ab, i64 noundef 4), !noalias !3262 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ch = load i32, ptr %i.ab, align 4, !noalias !3261, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3261
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3261
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noundef nonnull %i.cg), !noalias !3263
  %.pr.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !3260 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, -1
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !3260 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %.sroa.520.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.16.sroa.0.0.copyload338.i.i.i = load i32, ptr %.sroa.520.0..sroa_idx.i.i.i.i, align 4, !noalias !3264
  %.sroa.16.sroa.8.0..sroa.520.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.16.sroa.8.0.copyload341.i.i.i = load i64, ptr %.sroa.16.sroa.8.0..sroa.520.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3264
  %.sroa.17.20..sroa.520.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.17.20.copyload.i.i.i = load i32, ptr %.sroa.17.20..sroa.520.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3264
  %.sroa.18.20..sroa.520.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.18.20.copyload.i.i.i = load i32, ptr %.sroa.18.20..sroa.520.0..sroa_idx.i.sroa_idx.i.i.i, align 4, !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3260
  br label %bb.y

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i
  %i.ci = phi i32 [ %i.ch, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i ], [ %.pre.i.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3260
  call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3267
  store i32 0, ptr %i.z, align 4, !noalias !3267
  %i.cj = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, i64 noundef 4), !noalias !3268 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i
  %i.ck = load i32, ptr %i.z, align 4, !noalias !3267, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3267
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3267
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noundef nonnull %i.cj), !noalias !3269
  %.pr.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !3266 ; 2 uses
  %.not.i.i150.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -1
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !3266 ; 2 uses
  br i1 %.not.i.i150.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i.i, label %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i

_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.521.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.521.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.518.0..sroa_idx.i.i.i.i.i, i64 20, i1 false), !noalias !3270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3266
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.pre.i.i.i.i.i, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3265, !noalias !3270
  br label %bb.m

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i
  %i.cl = phi i32 [ %i.ck, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3266
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, label %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread37.i.i.i.i

_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread37.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i.i
  %.sroa.423.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 -1, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3265, !noalias !3270
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @28, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !3265, !noalias !3270
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 45, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !3265, !noalias !3270
  br label %bb.m

_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i.i
  %i.cn = zext nneg i32 %i.cl to i64
  call fastcc void @_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.cn, i64 noundef %i.bt, i64 %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 28) #41
  %.pr32.pre.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !3260 ; 2 uses
  %.not30.i.i.i.i = icmp eq i64 %.pr32.pre.i.i.i.i, -1
  br i1 %.not30.i.i.i.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread37.i.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i
  %i.co = phi i64 [ %.pr.i.i.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i ], [ %.pr32.pre.i.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ 2, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread37.i.i.i.i ]
  %.sroa.427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.68.i.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.427.0..sroa_idx.i.i.i.i, align 8, !noalias !3260 ; 2 uses
  %.sroa.68.i.sroa.0.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.68.i.sroa.0.0.copyload.i.i.i to i32
  %.sroa.68.i.sroa.0.sroa.7.0.extract.shift.i.i.i = lshr i64 %.sroa.68.i.sroa.0.0.copyload.i.i.i, 32
  %.sroa.68.i.sroa.0.sroa.7.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.68.i.sroa.0.sroa.7.0.extract.shift.i.i.i to i32
  %.sroa.68.i.sroa.8.0..sroa.427.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.68.i.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.68.i.sroa.8.0..sroa.427.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3260
  %.sroa.68.i.sroa.11.0..sroa.427.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.68.i.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.68.i.sroa.11.0..sroa.427.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3260
  %.sroa.68.i.sroa.11.16.extract.trunc.i.i.i = trunc i64 %.sroa.68.i.sroa.11.0.copyload.i.i.i to i32
  %.sroa.68.i.sroa.11.20.extract.shift.i.i.i = lshr i64 %.sroa.68.i.sroa.11.0.copyload.i.i.i, 32
  %.sroa.68.i.sroa.11.20.extract.trunc.i.i.i = trunc nuw i64 %.sroa.68.i.sroa.11.20.extract.shift.i.i.i to i32
  br label %bb.y

bb.n:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3272
  store i32 0, ptr %i.r, align 4, !noalias !3272
  %i.cp = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, i64 noundef 4), !noalias !3273 ; 2 uses
  %.not.i.i.i151.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i151.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i158.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i152.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i158.i.i.i: ; preds = %bb.n
  %i.cq = load i32, ptr %i.r, align 4, !noalias !3272, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3272
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i155.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i152.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3272
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noundef nonnull %i.cp), !noalias !3274
  %.pr.i153.i.i.i = load i64, ptr %i.y, align 8, !noalias !3271 ; 2 uses
  %.not.i154.i.i.i = icmp eq i64 %.pr.i153.i.i.i, -1
  %.phi.trans.insert.i156.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i157.i.i.i = load i32, ptr %.phi.trans.insert.i156.i.i.i, align 8, !noalias !3271 ; 2 uses
  br i1 %.not.i154.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i155.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i152.i.i.i
  %.sroa.565.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.20.sroa.12.4.copyload.i.i.i = load i32, ptr %.sroa.565.0..sroa_idx.i.i.i.i, align 4, !noalias !3275
  %.sroa.27.20..sroa.565.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cr = load <2 x i32>, ptr %.sroa.27.20..sroa.565.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3275
  %.sroa.27.sroa.13.0..sroa.27.20..sroa.565.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.27.sroa.13.0.copyload379.i.i.i = load i64, ptr %.sroa.27.sroa.13.0..sroa.27.20..sroa.565.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3271
  %i.cs = zext i32 %.sroa.20.sroa.12.4.copyload.i.i.i to i64
  br label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i155.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i152.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i158.i.i.i
  %i.ct = phi i32 [ %i.cq, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i158.i.i.i ], [ %.pre.i157.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i152.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3276
  store i64 0, ptr %i.q, align 8, !noalias !3276
  %i.cu = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 8), !noalias !3277 ; 2 uses
  %.not.i.i116.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i116.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i155.i.i.i
  %i.cv = load i64, ptr %i.q, align 8, !noalias !3276, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3276
  br label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i155.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3276
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noundef nonnull %i.cu), !noalias !3274
  %.pr122.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !3271 ; 2 uses
  %.not111.i.i.i.i = icmp eq i64 %.pr122.i.i.i.i, -1
  %.phi.trans.insert128.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre129.i.i.i.i = load i64, ptr %.phi.trans.insert128.i.i.i.i, align 8, !noalias !3271 ; 3 uses
  br i1 %.not111.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %.sroa.574.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cw = load <2 x i32>, ptr %.sroa.574.0..sroa_idx.i.i.i.i, align 8, !noalias !3275
  %.sroa.27.sroa.13.0..sroa.574.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.27.sroa.13.0.copyload380.i.i.i = load i64, ptr %.sroa.27.sroa.13.0..sroa.574.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3271
  %.sroa.20.sroa.0.0.extract.trunc214.i.i.i = trunc i64 %.pre129.i.i.i.i to i32
  %.sroa.20.sroa.12.0.extract.shift223.i.i.i = lshr i64 %.pre129.i.i.i.i, 32
  br label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i
  %i.cx = phi i64 [ %i.cv, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i ], [ %.pre129.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3278
  store i64 0, ptr %i.p, align 8, !noalias !3278
  %i.cy = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 8), !noalias !3279 ; 2 uses
  %.not.i.i117.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i117.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.thread.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.thread.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i
  %i.cz = load i64, ptr %i.p, align 8, !noalias !3278, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3278
  br label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118._crit_edge.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3278
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef nonnull %i.cy), !noalias !3274
  %.pr124.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !3271 ; 2 uses
  %.not112.i.i.i.i = icmp eq i64 %.pr124.i.i.i.i, -1
  %.phi.trans.insert130.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre131.i.i.i.i = load i64, ptr %.phi.trans.insert130.i.i.i.i, align 8, !noalias !3271 ; 3 uses
  br i1 %.not112.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118._crit_edge.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.i.i.i.i
  %.sroa.583.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.da = load <2 x i32>, ptr %.sroa.583.0..sroa_idx.i.i.i.i, align 8, !noalias !3275
  %.sroa.27.sroa.13.0..sroa.583.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.27.sroa.13.0.copyload381.i.i.i = load i64, ptr %.sroa.27.sroa.13.0..sroa.583.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3271
  %.sroa.20.sroa.0.0.extract.trunc215.i.i.i = trunc i64 %.pre131.i.i.i.i to i32
  %.sroa.20.sroa.12.0.extract.shift225.i.i.i = lshr i64 %.pre131.i.i.i.i, 32
  br label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118._crit_edge.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.thread.i.i.i.i
  %i.db = phi i64 [ %i.cz, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.thread.i.i.i.i ], [ %.pre131.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3280
  store i64 0, ptr %i.o, align 8, !noalias !3280
  %i.dc = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 8), !noalias !3281 ; 2 uses
  %.not.i.i119.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i119.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.thread.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.thread.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118._crit_edge.i.i.i.i
  %i.dd = load i64, ptr %i.o, align 8, !noalias !3280, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3280
  br label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit118._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3280
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noundef nonnull %i.dc), !noalias !3274
  %.pr126.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !3271 ; 2 uses
  %.not113.i.i.i.i = icmp eq i64 %.pr126.i.i.i.i, -1
  %.phi.trans.insert132.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre133.i.i.i.i = load i64, ptr %.phi.trans.insert132.i.i.i.i, align 8, !noalias !3271 ; 3 uses
  br i1 %.not113.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.i.i.i.i
  %.sroa.592.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.de = load <2 x i32>, ptr %.sroa.592.0..sroa_idx.i.i.i.i, align 8, !noalias !3275
  %.sroa.27.sroa.13.0..sroa.592.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.27.sroa.13.0.copyload382.i.i.i = load i64, ptr %.sroa.27.sroa.13.0..sroa.592.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3271
  %.sroa.20.sroa.0.0.extract.trunc216.i.i.i = trunc i64 %.pre133.i.i.i.i to i32
  %.sroa.20.sroa.12.0.extract.shift227.i.i.i = lshr i64 %.pre133.i.i.i.i, 32
  br label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.thread.i.i.i.i
  %i.df = phi i64 [ %i.dd, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.thread.i.i.i.i ], [ %.pre133.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3271
  call fastcc void @_RINvYaNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.cx, i64 %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 31) #41
  %i.dg = load i64, ptr %i.t, align 8, !range !9, !noalias !3271, !noundef !7 ; 2 uses
  %.not114.i.i.i.i = icmp eq i64 %i.dg, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.647.i.sroa.0.0.copyload430.i.i.i = load i64, ptr %i.dh, align 8, !noalias !3271 ; 4 uses
  %.sroa.647.i.sroa.7.0..sroa_idx432.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.di = load <2 x i32>, ptr %.sroa.647.i.sroa.7.0..sroa_idx432.i.i.i, align 8, !noalias !3271 ; 2 uses
  %.sroa.647.i.sroa.9.0..sroa_idx440.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.647.i.sroa.9.0.copyload441.i.i.i = load i64, ptr %.sroa.647.i.sroa.9.0..sroa_idx440.i.i.i, align 8, !noalias !3271 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3271
  br i1 %.not114.i.i.i.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i
  store i64 %.sroa.647.i.sroa.0.0.copyload430.i.i.i, ptr %i.u, align 8, !noalias !3271
  %.sroa.647.i.sroa.7.0..sroa_idx434.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store <2 x i32> %i.di, ptr %.sroa.647.i.sroa.7.0..sroa_idx434.i.i.i, align 8, !noalias !3271
  %.sroa.647.i.sroa.9.0..sroa_idx442.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.647.i.sroa.9.0.copyload441.i.i.i, ptr %.sroa.647.i.sroa.9.0..sroa_idx442.i.i.i, align 8, !noalias !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3271
  invoke fastcc void @_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.db, i64 noundef 393210, i64 %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 33)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #37
          to label %common.resume unwind label %bb.x, !noalias !3274

bb.u:                                             ; preds = %bb.s
  %i.dk = load i64, ptr %i.s, align 8, !range !9, !noalias !3271, !noundef !7 ; 2 uses
  %.not115.i.i.i.i = icmp eq i64 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.653.i.sroa.0.0.copyload444.i.i.i = load i64, ptr %i.dl, align 8, !noalias !3271 ; 4 uses
  %.sroa.653.i.sroa.7.0..sroa_idx446.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %.not115.i.i.i.i, label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load <2 x i32>, ptr %.sroa.653.i.sroa.7.0..sroa_idx446.i.i.i, align 8, !noalias !3271
  %.sroa.653.i.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.653.i.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.653.i.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3271
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u), !noalias !3274
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i
  %.sroa.27.sroa.13.0.i.i.i = phi i64 [ %.sroa.653.i.sroa.9.0.copyload.i.i.i, %bb.v ], [ %.sroa.647.i.sroa.9.0.copyload441.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i ]
  %.sroa.20.sroa.12.0.in.in.i.i.i = phi i64 [ %.sroa.653.i.sroa.0.0.copyload444.i.i.i, %bb.v ], [ %.sroa.647.i.sroa.0.0.copyload430.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.12207.0.i.i.i = phi i64 [ %i.dk, %bb.v ], [ %i.dg, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i ]
  %i.dn = phi <2 x i32> [ %i.dm, %bb.v ], [ %i.di, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit120._crit_edge.i.i.i.i ]
  %.sroa.20.sroa.0.0.i.i.i = trunc i64 %.sroa.20.sroa.12.0.in.in.i.i.i to i32
  %.sroa.20.sroa.12.0.in.i.i.i = lshr i64 %.sroa.20.sroa.12.0.in.in.i.i.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3271
  br label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

bb.x:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3274
  unreachable

common.resume:                                    ; preds = %bb.ax, %bb.as, %bb.t, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.fs, %bb.as ], [ %i.ez, %bb.am ], [ %i.dj, %bb.t ], [ %i.fy, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.u
  %.sroa.653.i.sroa.7.0.copyload447.i.i.i = load i64, ptr %.sroa.653.i.sroa.7.0..sroa_idx446.i.i.i, align 8, !noalias !3271 ; 2 uses
  %.sroa.653.i.sroa.9.0..sroa_idx452.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.653.i.sroa.9.0.copyload453.i.i.i = load i64, ptr %.sroa.653.i.sroa.9.0..sroa_idx452.i.i.i, align 8, !noalias !3271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3271
  %.sroa.057.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.647.i.sroa.7.0..sroa_idx434.i.i.i, align 8, !noalias !3271 ; 2 uses
  %.sroa.20.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.647.i.sroa.9.0.copyload441.i.i.i to i32
  %.sroa.20.sroa.12.0.extract.shift.i.i.i = lshr i64 %.sroa.647.i.sroa.9.0.copyload441.i.i.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3271
  %i.dp = icmp eq i64 %.sroa.647.i.sroa.0.0.copyload430.i.i.i, -1
  %i.dq = bitcast i64 %.sroa.653.i.sroa.0.0.copyload444.i.i.i to <2 x i32>
  br i1 %i.dp, label %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %bb.aa

bb.y:                                             ; preds = %bb.m, %bb.l
  %.sroa.16.sroa.8.0.ph.i.i.i = phi i64 [ %.sroa.16.sroa.8.0.copyload341.i.i.i, %bb.l ], [ %.sroa.68.i.sroa.8.0.copyload.i.i.i, %bb.m ]
  %.sroa.16.sroa.0.0.ph.i.i.i = phi i32 [ %.sroa.16.sroa.0.0.copyload338.i.i.i, %bb.l ], [ %.sroa.68.i.sroa.0.sroa.7.0.extract.trunc.i.i.i, %bb.m ]
  %.sroa.18.0.ph.i.i.i = phi i32 [ %.sroa.18.20.copyload.i.i.i, %bb.l ], [ %.sroa.68.i.sroa.11.20.extract.trunc.i.i.i, %bb.m ]
  %.sroa.17.0.ph.i.i.i = phi i32 [ %.sroa.17.20.copyload.i.i.i, %bb.l ], [ %.sroa.68.i.sroa.11.16.extract.trunc.i.i.i, %bb.m ]
  %.sroa.12.0.ph.i.i.i = phi i32 [ %.pre.i.i.i.i, %bb.l ], [ %.sroa.68.i.sroa.0.sroa.0.0.extract.trunc.i.i.i, %bb.m ]
  %.sroa.7.0.ph.i.i.i = phi i64 [ %.pr.i.i.i.i, %bb.l ], [ %i.co, %bb.m ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.7.0.ph.i.i.i, ptr %i.dr, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4128.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %.sroa.12.0.ph.i.i.i, ptr %.sroa.4128.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4128.sroa.4.0..sroa.4128.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 %.sroa.16.sroa.0.0.ph.i.i.i, ptr %.sroa.4128.sroa.4.0..sroa.4128.0..sroa_idx.sroa_idx.i.i.i, align 4, !alias.scope !3257, !noalias !3256
  %.sroa.4128.sroa.4.sroa.4.0..sroa.4128.sroa.4.0..sroa.4128.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.16.sroa.8.0.ph.i.i.i, ptr %.sroa.4128.sroa.4.sroa.4.0..sroa.4128.sroa.4.0..sroa.4128.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4128.sroa.5.0..sroa.4128.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 %.sroa.17.0.ph.i.i.i, ptr %.sroa.4128.sroa.5.0..sroa.4128.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4128.sroa.6.0..sroa.4128.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  store i32 %.sroa.18.0.ph.i.i.i, ptr %.sroa.4128.sroa.6.0..sroa.4128.0..sroa_idx.sroa_idx.i.i.i, align 4, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

bb.z:                                             ; preds = %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.68.i.sroa.0.0.copyload420.i.i.i = load i64, ptr %i.ds, align 8, !noalias !3260
  %.sroa.68.i.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.68.i.sroa.8.0.copyload421.i.i.i = load i64, ptr %.sroa.68.i.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !3260
  %.sroa.68.i.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.68.i.sroa.11.0.copyload422.i.i.i = load i64, ptr %.sroa.68.i.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !3260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3260
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.12207.1576.i.i.i = phi i64 [ %.sroa.057.i.sroa.4.0.copyload.i.i.i, %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.pr.i153.i.i.i, %bb.o ], [ %.pr122.i.i.i.i, %bb.p ], [ %.pr124.i.i.i.i, %bb.q ], [ %.pr126.i.i.i.i, %bb.r ], [ %.sroa.12207.0.i.i.i, %bb.w ]
  %.sroa.20.sroa.0.1575.i.i.i = phi i32 [ %.sroa.20.sroa.0.0.extract.trunc.i.i.i, %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.pre.i157.i.i.i, %bb.o ], [ %.sroa.20.sroa.0.0.extract.trunc214.i.i.i, %bb.p ], [ %.sroa.20.sroa.0.0.extract.trunc215.i.i.i, %bb.q ], [ %.sroa.20.sroa.0.0.extract.trunc216.i.i.i, %bb.r ], [ %.sroa.20.sroa.0.0.i.i.i, %bb.w ]
  %.sroa.20.sroa.12.1574.i.i.i = phi i64 [ %.sroa.20.sroa.12.0.extract.shift.i.i.i, %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.cs, %bb.o ], [ %.sroa.20.sroa.12.0.extract.shift223.i.i.i, %bb.p ], [ %.sroa.20.sroa.12.0.extract.shift225.i.i.i, %bb.q ], [ %.sroa.20.sroa.12.0.extract.shift227.i.i.i, %bb.r ], [ %.sroa.20.sroa.12.0.in.i.i.i, %bb.w ]
  %.sroa.27.sroa.13.1573.i.i.i = phi i64 [ %.sroa.653.i.sroa.7.0.copyload447.i.i.i, %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.27.sroa.13.0.copyload379.i.i.i, %bb.o ], [ %.sroa.27.sroa.13.0.copyload380.i.i.i, %bb.p ], [ %.sroa.27.sroa.13.0.copyload381.i.i.i, %bb.q ], [ %.sroa.27.sroa.13.0.copyload382.i.i.i, %bb.r ], [ %.sroa.27.sroa.13.0.i.i.i, %bb.w ]
  %i.dt = phi <2 x i32> [ %i.dq, %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.cr, %bb.o ], [ %i.cw, %bb.p ], [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.dn, %bb.w ]
  %.sroa.20.sroa.12.0.insert.shift.i.i.i = shl nuw i64 %.sroa.20.sroa.12.1574.i.i.i, 32
  %.sroa.20.sroa.0.0.insert.ext.i.i.i = zext i32 %.sroa.20.sroa.0.1575.i.i.i to i64
  %.sroa.20.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.20.sroa.12.0.insert.shift.i.i.i, %.sroa.20.sroa.0.0.insert.ext.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.12207.1576.i.i.i, ptr %i.du, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.5395.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.20.sroa.0.0.insert.insert.i.i.i, ptr %.sroa.5395.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.6396.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store <2 x i32> %i.dt, ptr %.sroa.6396.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.8398.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.27.sroa.13.1573.i.i.i, ptr %.sroa.8398.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

bb.aa:                                            ; preds = %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %.sroa.057.i.sroa.6.28.extract.shift.i.i.i = lshr i64 %.sroa.653.i.sroa.0.0.copyload444.i.i.i, 32
  %.sroa.057.i.sroa.6.28.extract.trunc.i.i.i = trunc nuw i64 %.sroa.057.i.sroa.6.28.extract.shift.i.i.i to i32
  %.sroa.057.i.sroa.6.24.extract.trunc.i.i.i = trunc i64 %.sroa.653.i.sroa.0.0.copyload444.i.i.i to i32
  %.sroa.32.56.insert.ext.i.i.i = zext i32 %i.ct to i64
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.ab:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3282
  call fastcc void @_RINvMNtNtCsdsTQD3x2eOp_3exr5block5chunkNtB3_15TileCoordinates4readINtNtB7_2io8PeekReadINtB15_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq), !noalias !3283
  %i.dv = load i64, ptr %i.n, align 8, !range !19, !noalias !3282, !noundef !7
  %i.dw = trunc nuw i64 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.i.sroa.0.0.copyload456.i.i.i = load i64, ptr %i.dx, align 8, !noalias !3282 ; 3 uses
  %.sroa.5.i.sroa.7.0..sroa_idx459.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.i.sroa.7.0.copyload460.i.i.i = load i64, ptr %.sroa.5.i.sroa.7.0..sroa_idx459.i.i.i, align 8, !noalias !3282 ; 3 uses
  %.sroa.5.i.sroa.8.0..sroa_idx463.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.i.sroa.8.0.copyload464.i.i.i = load i32, ptr %.sroa.5.i.sroa.8.0..sroa_idx463.i.i.i, align 8, !noalias !3282
  %.sroa.5.i.sroa.9.0..sroa_idx467.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.sroa.5.i.sroa.9.0.copyload468.i.i.i = load i32, ptr %.sroa.5.i.sroa.9.0..sroa_idx467.i.i.i, align 4, !noalias !3282
  %.sroa.5.i.sroa.10.0..sroa_idx471.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.5.i.sroa.10.0.copyload472.i.i.i = load i64, ptr %.sroa.5.i.sroa.10.0..sroa_idx471.i.i.i, align 8, !noalias !3282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3282
  br label %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.sroa.5.i.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.5.i.sroa.8.0..sroa_idx463.i.i.i, align 8, !noalias !3282
  %.sroa.5.i.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.5.i.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.5.i.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3282
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3286
  store i32 0, ptr %i.k, align 4, !noalias !3286
  %i.dy = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k, i64 noundef 4), !noalias !3287 ; 2 uses
  %.not.i.i.i.i159.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i159.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i175.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i160.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i175.i.i.i: ; preds = %bb.ad
  %i.dz = load i32, ptr %i.k, align 4, !noalias !3286, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3286
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i169.i.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i160.i.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3286
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull %i.dy), !noalias !3288
  %.pr.i.i161.i.i.i = load i64, ptr %i.l, align 8, !noalias !3285 ; 2 uses
  %.not.i.i162.i.i.i = icmp eq i64 %.pr.i.i161.i.i.i, -1
  %.phi.trans.insert.i.i163.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i.i164.i.i.i = load i32, ptr %.phi.trans.insert.i.i163.i.i.i, align 8, !noalias !3285 ; 2 uses
  br i1 %.not.i.i162.i.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i169.i.i.i, label %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i165.i.i.i

_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i165.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i160.i.i.i
  %.sroa.518.0..sroa_idx.i.i166.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.521.0..sroa_idx.i.i167.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.521.0..sroa_idx.i.i167.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.518.0..sroa_idx.i.i166.i.i.i, i64 20, i1 false), !noalias !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3285
  %.sroa.420.0..sroa_idx.i.i168.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %.pre.i.i164.i.i.i, ptr %.sroa.420.0..sroa_idx.i.i168.i.i.i, align 8, !alias.scope !3284, !noalias !3289
  br label %bb.ae

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i169.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i160.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i175.i.i.i
  %i.ea = phi i32 [ %i.dz, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i175.i.i.i ], [ %.pre.i.i164.i.i.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i160.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3285
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i173.i.i.i, label %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread14.i.i.i.i

_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread14.i.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i169.i.i.i
  %.sroa.423.0..sroa_idx.i.i170.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 -1, ptr %.sroa.423.0..sroa_idx.i.i170.i.i.i, align 8, !alias.scope !3284, !noalias !3289
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i171.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @28, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i171.i.i.i, align 8, !alias.scope !3284, !noalias !3289
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i172.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 45, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i172.i.i.i, align 8, !alias.scope !3284, !noalias !3289
  br label %bb.ae

_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i173.i.i.i: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i169.i.i.i
  %i.ec = zext nneg i32 %i.ea to i64
  call fastcc void @_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.ec, i64 noundef %i.cc, i64 %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 23) #41
  %.pr.pre.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !3282 ; 2 uses
  %.not.i174.i.i.i = icmp eq i64 %.pr.pre.i.i.i.i, -1
  br i1 %.not.i174.i.i.i, label %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i173.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread14.i.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i165.i.i.i
  %i.ed = phi i64 [ %.pr.i.i161.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i165.i.i.i ], [ %.pr.pre.i.i.i.i, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i173.i.i.i ], [ 2, %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread14.i.i.i.i ]
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.i.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !3282
  %.sroa.6.i.sroa.7.0..sroa.48.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6.i.sroa.7.0.copyload.i.i.i = load i32, ptr %.sroa.6.i.sroa.7.0..sroa.48.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3282
  %.sroa.6.i.sroa.8.0..sroa.48.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %.sroa.6.i.sroa.8.0.copyload.i.i.i = load i32, ptr %.sroa.6.i.sroa.8.0..sroa.48.0..sroa_idx.i.sroa_idx.i.i.i, align 4, !noalias !3282
  %.sroa.6.i.sroa.9.0..sroa.48.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.6.i.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.6.i.sroa.9.0..sroa.48.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3282
  br label %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data21read_i32_sized_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i173.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.i.sroa.0.0.copyload478.i.i.i = load i64, ptr %i.ee, align 8, !noalias !3282 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6.i.sroa.7.0.copyload480.i.i.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !3282 ; 2 uses
  %.sroa.6.i.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.6.i.sroa.9.0.copyload486.i.i.i = load i64, ptr %.sroa.6.i.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3282 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3282
  %.sroa.9492.24.extract.trunc.i.i.i = trunc i64 %.sroa.5.i.sroa.0.0.copyload456.i.i.i to i32 ; 2 uses
  %.sroa.9492.28.extract.shift.i.i.i = lshr i64 %.sroa.5.i.sroa.0.0.copyload456.i.i.i, 32
  %.sroa.9492.28.extract.trunc.i.i.i = trunc nuw i64 %.sroa.9492.28.extract.shift.i.i.i to i32 ; 2 uses
  %i.ef = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload478.i.i.i, -1
  br i1 %i.ef, label %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.af:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3290
  call fastcc void @_RINvMNtNtCsdsTQD3x2eOp_3exr5block5chunkNtB3_15TileCoordinates4readINtNtB7_2io8PeekReadINtB15_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq), !noalias !3291
  %i.eg = load i64, ptr %i.j, align 8, !range !19, !noalias !3290, !noundef !7
  %i.eh = trunc nuw i64 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.i176.sroa.0.0.copyload496.i.i.i = load i64, ptr %i.ei, align 8, !noalias !3290 ; 2 uses
  %.sroa.5.i176.sroa.7.0..sroa_idx499.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.i176.sroa.7.0.copyload500.i.i.i = load i64, ptr %.sroa.5.i176.sroa.7.0..sroa_idx499.i.i.i, align 8, !noalias !3290 ; 2 uses
  %.sroa.5.i176.sroa.8.0..sroa_idx503.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.5.i176.sroa.8.0.copyload504.i.i.i = load i64, ptr %.sroa.5.i176.sroa.8.0..sroa_idx503.i.i.i, align 8, !noalias !3290 ; 2 uses
  %.sroa.5.i176.sroa.9.0..sroa_idx507.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  br i1 %i.eh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ej = load <2 x i32>, ptr %.sroa.5.i176.sroa.9.0..sroa_idx507.i.i.i, align 8, !noalias !3290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3290
  br label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

bb.ah:                                            ; preds = %bb.af
  %.sroa.5.i176.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.5.i176.sroa.9.0..sroa_idx507.i.i.i, align 8, !noalias !3290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3292
  store i64 0, ptr %i.c, align 8, !noalias !3292
  %i.ek = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 8), !noalias !3293 ; 2 uses
  %.not.i.i.i177.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i177.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i194.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i178.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i194.i.i.i: ; preds = %bb.ah
  %i.el = load i64, ptr %i.c, align 8, !noalias !3292, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3292
  br label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i181.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i178.i.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3292
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull %i.ek), !noalias !3291
  %.pr.i179.i.i.i = load i64, ptr %i.i, align 8, !noalias !3290 ; 2 uses
  %.not.i180.i.i.i = icmp eq i64 %.pr.i179.i.i.i, -1
  %.phi.trans.insert.i182.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i183.i.i.i = load i64, ptr %.phi.trans.insert.i182.i.i.i, align 8, !noalias !3290 ; 2 uses
  br i1 %.not.i180.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i181.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i178.i.i.i
  %.sroa.556.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.27240.sroa.0.0.copyload403.i.i.i = load i64, ptr %.sroa.556.0..sroa_idx.i.i.i.i, align 8, !noalias !3294
  %.sroa.27240.sroa.12.0..sroa.556.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.em = load <2 x i32>, ptr %.sroa.27240.sroa.12.0..sroa.556.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !3294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3290
  br label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i181.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i178.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i194.i.i.i
  %i.en = phi i64 [ %i.el, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i194.i.i.i ], [ %.pre.i183.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i178.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3295
  store i64 0, ptr %i.b, align 8, !noalias !3295
  %i.eo = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8), !noalias !3296 ; 2 uses
  %.not.i.i97.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i97.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.thread.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.thread.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i181.i.i.i
  %i.ep = load i64, ptr %i.b, align 8, !noalias !3295, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3295
  br label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98._crit_edge.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge.i181.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3295
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull %i.eo), !noalias !3291
  %.pr102.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !3290 ; 2 uses
  %.not93.i.i.i.i = icmp eq i64 %.pr102.i.i.i.i, -1
  %.phi.trans.insert106.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre107.i.i.i.i = load i64, ptr %.phi.trans.insert106.i.i.i.i, align 8, !noalias !3290 ; 2 uses
  br i1 %.not93.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98._crit_edge.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.i.i.i.i
  %.sroa.565.0..sroa_idx.i186.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.27240.sroa.0.0.copyload404.i.i.i = load i64, ptr %.sroa.565.0..sroa_idx.i186.i.i.i, align 8, !noalias !3294
  %.sroa.27240.sroa.12.0..sroa.565.0..sroa_idx.i186.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.eq = load <2 x i32>, ptr %.sroa.27240.sroa.12.0..sroa.565.0..sroa_idx.i186.sroa_idx.i.i.i, align 8, !noalias !3294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3290
  br label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98._crit_edge.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.thread.i.i.i.i
  %i.er = phi i64 [ %i.ep, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.thread.i.i.i.i ], [ %.pre107.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3297
  store i64 0, ptr %i.a, align 8, !noalias !3297
  %i.es = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !noalias !3298 ; 2 uses
  %.not.i.i99.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i99.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.thread.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.thread.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98._crit_edge.i.i.i.i
  %i.et = load i64, ptr %i.a, align 8, !noalias !3297, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3297
  br label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit98._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3297
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.es), !noalias !3291
  %.pr104.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !3290 ; 2 uses
  %.not94.i.i.i.i = icmp eq i64 %.pr104.i.i.i.i, -1
  %.phi.trans.insert108.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre109.i.i.i.i = load i64, ptr %.phi.trans.insert108.i.i.i.i, align 8, !noalias !3290 ; 2 uses
  br i1 %.not94.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.i.i.i.i
  %.sroa.574.0..sroa_idx.i191.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.27240.sroa.0.0.copyload405.i.i.i = load i64, ptr %.sroa.574.0..sroa_idx.i191.i.i.i, align 8, !noalias !3294
  %.sroa.27240.sroa.12.0..sroa.574.0..sroa_idx.i191.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.eu = load <2 x i32>, ptr %.sroa.27240.sroa.12.0..sroa.574.0..sroa_idx.i191.sroa_idx.i.i.i, align 8, !noalias !3294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3290
  br label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i: ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.thread.i.i.i.i
  %i.ev = phi i64 [ %i.et, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.thread.i.i.i.i ], [ %.pre109.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3290
  call fastcc void @_RINvYaNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.en, i64 %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 26) #41
  %i.ew = load i64, ptr %i.e, align 8, !range !9, !noalias !3290, !noundef !7 ; 2 uses
  %.not95.i.i.i.i = icmp eq i64 %i.ew, -1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.639.i.sroa.0.0.copyload518.i.i.i = load i64, ptr %i.ex, align 8, !noalias !3290 ; 4 uses
  %.sroa.639.i.sroa.7.0..sroa_idx520.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.639.i.sroa.7.0.copyload521.i.i.i = load i64, ptr %.sroa.639.i.sroa.7.0..sroa_idx520.i.i.i, align 8, !noalias !3290 ; 4 uses
  %.sroa.639.i.sroa.8.0..sroa_idx524.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ey = load <2 x i32>, ptr %.sroa.639.i.sroa.8.0..sroa_idx524.i.i.i, align 8, !noalias !3290 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3290
  br i1 %.not95.i.i.i.i, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i
  store i64 %.sroa.639.i.sroa.0.0.copyload518.i.i.i, ptr %i.f, align 8, !noalias !3290
  %.sroa.639.i.sroa.7.0..sroa_idx522.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.639.i.sroa.7.0.copyload521.i.i.i, ptr %.sroa.639.i.sroa.7.0..sroa_idx522.i.i.i, align 8, !noalias !3290
  %.sroa.639.i.sroa.8.0..sroa_idx526.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store <2 x i32> %i.ey, ptr %.sroa.639.i.sroa.8.0..sroa_idx526.i.i.i, align 8, !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3290
  invoke fastcc void @_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq, i64 noundef %i.er, i64 noundef 393210, i64 %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 28)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #37
          to label %common.resume unwind label %bb.aq, !noalias !3291

bb.an:                                            ; preds = %bb.al
  %i.fa = load i64, ptr %i.d, align 8, !range !9, !noalias !3290, !noundef !7 ; 2 uses
  %.not96.i.i.i.i = icmp eq i64 %i.fa, -1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.645.i.sroa.0.0.copyload532.i.i.i = load i64, ptr %i.fb, align 8, !noalias !3290 ; 3 uses
  %.sroa.645.i.sroa.7.0..sroa_idx534.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.645.i.sroa.7.0.copyload535.i.i.i = load i64, ptr %.sroa.645.i.sroa.7.0..sroa_idx534.i.i.i, align 8, !noalias !3290 ; 4 uses
  %.sroa.645.i.sroa.8.0..sroa_idx537.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %.not96.i.i.i.i, label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = load <2 x i32>, ptr %.sroa.645.i.sroa.8.0..sroa_idx537.i.i.i, align 8, !noalias !3290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3290
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f), !noalias !3291
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i
  %.sroa.27240.sroa.0.0.i.i.i = phi i64 [ %.sroa.645.i.sroa.7.0.copyload535.i.i.i, %bb.ao ], [ %.sroa.639.i.sroa.7.0.copyload521.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i ]
  %.sroa.20.0.i.i.i = phi i64 [ %.sroa.645.i.sroa.0.0.copyload532.i.i.i, %bb.ao ], [ %.sroa.639.i.sroa.0.0.copyload518.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i ]
  %.sroa.12234.0.i.i.i = phi i64 [ %i.fa, %bb.ao ], [ %i.ew, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i ]
  %i.fd = phi <2 x i32> [ %i.fc, %bb.ao ], [ %i.ey, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit100._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3290
  br label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3291
  unreachable

_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.an
  %.sroa.645.i.sroa.8.0.copyload538.i.i.i = load i64, ptr %.sroa.645.i.sroa.8.0..sroa_idx537.i.i.i, align 8, !noalias !3290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3290
  %.sroa.049.i.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.639.i.sroa.8.0..sroa_idx526.i.i.i, align 8, !noalias !3290 ; 2 uses
  %.sroa.049.i.sroa.8.32.extract.trunc.i.i.i = trunc i64 %.sroa.645.i.sroa.7.0.copyload535.i.i.i to i32
  %.sroa.049.i.sroa.8.36.extract.shift.i.i.i = lshr i64 %.sroa.645.i.sroa.7.0.copyload535.i.i.i, 32
  %.sroa.049.i.sroa.8.36.extract.trunc.i.i.i = trunc nuw i64 %.sroa.049.i.sroa.8.36.extract.shift.i.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3290
  %i.ff = icmp eq i64 %.sroa.639.i.sroa.0.0.copyload518.i.i.i, -1
  %i.fg = bitcast i64 %.sroa.645.i.sroa.7.0.copyload535.i.i.i to <2 x i32>
  br i1 %i.ff, label %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.ae, %bb.ac
  %.sroa.8202.0589.i.i.i = phi i64 [ %.sroa.6.i.sroa.7.0.copyload480.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.ed, %bb.ae ], [ %.sroa.5.i.sroa.0.0.copyload456.i.i.i, %bb.ac ]
  %.sroa.12205.sroa.0.0588.i.i.i = phi i64 [ %.sroa.6.i.sroa.9.0.copyload486.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %bb.ae ], [ %.sroa.5.i.sroa.7.0.copyload460.i.i.i, %bb.ac ]
  %.sroa.12205.sroa.8.0587.i.i.i = phi i32 [ %.sroa.9492.24.extract.trunc.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.6.i.sroa.7.0.copyload.i.i.i, %bb.ae ], [ %.sroa.5.i.sroa.8.0.copyload464.i.i.i, %bb.ac ]
  %.sroa.12205.sroa.9.0586.i.i.i = phi i32 [ %.sroa.9492.28.extract.trunc.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.6.i.sroa.8.0.copyload.i.i.i, %bb.ae ], [ %.sroa.5.i.sroa.9.0.copyload468.i.i.i, %bb.ac ]
  %.sroa.12205.sroa.10.0585.i.i.i = phi i64 [ %.sroa.5.i.sroa.7.0.copyload460.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.6.i.sroa.9.0.copyload.i.i.i, %bb.ae ], [ %.sroa.5.i.sroa.10.0.copyload472.i.i.i, %bb.ac ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.8202.0589.i.i.i, ptr %i.fh, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.5354.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.12205.sroa.0.0588.i.i.i, ptr %.sroa.5354.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.6355.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %.sroa.12205.sroa.8.0587.i.i.i, ptr %.sroa.6355.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.7356.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %.sroa.12205.sroa.9.0586.i.i.i, ptr %.sroa.7356.0..sroa_idx.i.i.i, align 4, !alias.scope !3257, !noalias !3256
  %.sroa.8357.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.12205.sroa.10.0585.i.i.i, ptr %.sroa.8357.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.ap, %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.sroa.12234.1606.i.i.i = phi i64 [ %.sroa.639.i.sroa.7.0.copyload521.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.pr.i179.i.i.i, %bb.ai ], [ %.pr102.i.i.i.i, %bb.aj ], [ %.pr104.i.i.i.i, %bb.ak ], [ %.sroa.12234.0.i.i.i, %bb.ap ], [ %.sroa.5.i176.sroa.0.0.copyload496.i.i.i, %bb.ag ]
  %.sroa.20.1605.i.i.i = phi i64 [ %.sroa.049.i.sroa.5.0.copyload.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.pre.i183.i.i.i, %bb.ai ], [ %.pre107.i.i.i.i, %bb.aj ], [ %.pre109.i.i.i.i, %bb.ak ], [ %.sroa.20.0.i.i.i, %bb.ap ], [ %.sroa.5.i176.sroa.7.0.copyload500.i.i.i, %bb.ag ]
  %.sroa.27240.sroa.0.1602.i.i.i = phi i64 [ %.sroa.645.i.sroa.0.0.copyload532.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.27240.sroa.0.0.copyload403.i.i.i, %bb.ai ], [ %.sroa.27240.sroa.0.0.copyload404.i.i.i, %bb.aj ], [ %.sroa.27240.sroa.0.0.copyload405.i.i.i, %bb.ak ], [ %.sroa.27240.sroa.0.0.i.i.i, %bb.ap ], [ %.sroa.5.i176.sroa.8.0.copyload504.i.i.i, %bb.ag ]
  %i.fi = phi <2 x i32> [ %i.fg, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.em, %bb.ai ], [ %i.eq, %bb.aj ], [ %i.eu, %bb.ak ], [ %i.fd, %bb.ap ], [ %i.ej, %bb.ag ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.12234.1606.i.i.i, ptr %i.fj, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4146.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.20.1605.i.i.i, ptr %.sroa.4146.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4146.sroa.5.0..sroa.4146.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.27240.sroa.0.1602.i.i.i, ptr %.sroa.4146.sroa.5.0..sroa.4146.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.4146.sroa.6.0..sroa.4146.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store <2 x i32> %i.fi, ptr %.sroa.4146.sroa.6.0..sroa.4146.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  br label %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8

_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8: ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.y, %_RINvMs1_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_27CompressedDeepScanLineBlock4readINtNtBa_2io8PeekReadINtB1k_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i
  %.sroa.6.0..sroa_idx410 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx410, i64 88, i1 false), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3245
  br label %bb.ar

_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.z, %bb.aa, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %.sroa.830.sroa.9.sroa.0.0.i.i.i = phi i64 [ %.sroa.653.i.sroa.9.0.copyload453.i.i.i, %bb.aa ], [ undef, %bb.z ], [ %.sroa.5.i.sroa.8.0.copyload.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.5.i176.sroa.0.0.copyload496.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.9.sroa.7.0.i.i.i = phi i64 [ %i.df, %bb.aa ], [ undef, %bb.z ], [ %.sroa.5.i.sroa.10.0.copyload.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.5.i176.sroa.7.0.copyload500.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.11.sroa.0.0.i.i.i = phi i64 [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.5.i176.sroa.9.0.copyload.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.11.sroa.5.0.i.i.i = phi i64 [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.ev, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.8.sroa.8.sroa.8.0.i.i.i = phi i64 [ %.sroa.647.i.sroa.9.0.copyload441.i.i.i, %bb.aa ], [ %.sroa.68.i.sroa.11.0.copyload422.i.i.i, %bb.z ], [ %.sroa.6.i.sroa.9.0.copyload486.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.645.i.sroa.0.0.copyload532.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.8.sroa.8.sroa.0.0.in.in.i.i.i = phi i64 [ %.sroa.057.i.sroa.4.0.copyload.i.i.i, %bb.aa ], [ %.sroa.68.i.sroa.8.0.copyload421.i.i.i, %bb.z ], [ %.sroa.6.i.sroa.7.0.copyload480.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.049.i.sroa.5.0.copyload.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.8.sroa.11.0.i.i.i = phi i64 [ %.sroa.653.i.sroa.7.0.copyload447.i.i.i, %bb.aa ], [ undef, %bb.z ], [ %.sroa.5.i.sroa.7.0.copyload460.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.645.i.sroa.8.0.copyload538.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.8.sroa.10.0.i.i.i = phi i32 [ %.sroa.057.i.sroa.6.28.extract.trunc.i.i.i, %bb.aa ], [ undef, %bb.z ], [ %.sroa.9492.28.extract.trunc.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.049.i.sroa.8.36.extract.trunc.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.8.sroa.9.0.i.i.i = phi i32 [ %.sroa.057.i.sroa.6.24.extract.trunc.i.i.i, %bb.aa ], [ %i.ci, %bb.z ], [ %.sroa.9492.24.extract.trunc.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.049.i.sroa.8.32.extract.trunc.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.10.0.i.i.i = phi i64 [ %.sroa.32.56.insert.ext.i.i.i, %bb.aa ], [ undef, %bb.z ], [ undef, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.5.i176.sroa.8.0.copyload504.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.830.sroa.0.0.i.i.i = phi i64 [ %.sroa.647.i.sroa.0.0.copyload430.i.i.i, %bb.aa ], [ %.sroa.68.i.sroa.0.0.copyload420.i.i.i, %bb.z ], [ %.sroa.6.i.sroa.0.0.copyload478.i.i.i, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.639.i.sroa.7.0.copyload521.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.sroa.028.0.i.i.i = phi i64 [ -9223372036854775806, %bb.aa ], [ -9223372036854775808, %bb.z ], [ -9223372036854775807, %_RINvMs0_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_19CompressedTileBlock4readINtNtBa_2io8PeekReadINtB1c_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.639.i.sroa.0.0.copyload518.i.i.i, %_RINvMs2_NtNtCsdsTQD3x2eOp_3exr5block5chunkNtB6_23CompressedDeepTileBlock4readINtNtBa_2io8PeekReadINtB1g_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i ] ; 2 uses
  %.sroa.026.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store i64 %.sroa.830.sroa.0.0.i.i.i, ptr %.sroa.026.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.830.sroa.8.sroa.8.sroa.0.0.in.in.i.i.i, ptr %.sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.5.sroa.5.sroa.5.0..sroa.026.sroa.5.sroa.5.sroa.5.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.830.sroa.8.sroa.8.sroa.8.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.5.sroa.5.sroa.5.0..sroa.026.sroa.5.sroa.5.sroa.5.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.5.sroa.6.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 %.sroa.830.sroa.8.sroa.9.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.5.sroa.6.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.5.sroa.7.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  store i32 %.sroa.830.sroa.8.sroa.10.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.5.sroa.7.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 4, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.5.sroa.8.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %.sroa.830.sroa.8.sroa.11.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.5.sroa.8.0..sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.6.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 %.sroa.830.sroa.9.sroa.0.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.6.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.6.sroa.5.0..sroa.026.sroa.5.sroa.6.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store i64 %.sroa.830.sroa.9.sroa.7.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.6.sroa.5.0..sroa.026.sroa.5.sroa.6.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.5.sroa.7.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i64 %.sroa.830.sroa.10.0.i.i.i, ptr %.sroa.026.sroa.5.sroa.7.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store i64 %.sroa.11.sroa.0.0.i.i.i, ptr %.sroa.026.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.026.sroa.6.sroa.5.0..sroa.026.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store i64 %.sroa.11.sroa.5.0.i.i.i, ptr %.sroa.026.sroa.6.sroa.5.0..sroa.026.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store i64 %i.bb, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !alias.scope !3257, !noalias !3256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.026.sroa.5.0..sroa_idx.i.i.i, i64 88, i1 false), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3245
  %.not = icmp eq i64 %.sroa.028.0.i.i.i, -2
  br i1 %.not, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8, %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %.sroa.02.0.copyload312 = phi i64 [ -1, %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread8 ], [ %.sroa.028.0.i.i.i, %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i64 %.sroa.02.0.copyload312, ptr %i.ah, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4376
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4384
  %i.fm = load <3 x i64>, ptr %i.fk, align 8, !noalias !3299
  %i.fn = shufflevector <3 x i64> %i.fm, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fo = uitofp <2 x i64> %i.fn to <2 x double>  ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %i.fq = extractelement <2 x double> %i.fo, i64 1
  %i.fr = fdiv double %i.fq, %i.fp
  invoke void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQFdEuINtB7_5FnMutTdEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fl, double noundef %i.fr)
          to label %bb.au unwind label %bb.as, !noalias !3299

bb.as:                                            ; preds = %bb.ar
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ah) #37
          to label %common.resume unwind label %bb.at, !noalias !3300

bb.at:                                            ; preds = %bb.as
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3300
  unreachable

.thread:                                          ; preds = %_RNvXs7_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %bb.a
  store i64 -2, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aw

bb.au:                                            ; preds = %bb.ar
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 4392 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !3299, !noundef !7
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 8, !noalias !3299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ai, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.pr = load i64, ptr %i.ai, align 8, !alias.scope !3301, !noalias !3302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  %.not.i = icmp eq i64 %.pr, -2
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false), !alias.scope !3303
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB1a_5error5ErrorEE7or_elseNCNvXs1_NtB18_6readerINtB2m_22OnProgressChunksReaderINtB2m_20FilteredChunksReaderINtNtNtB5_2io6cursor6CursorRShEEQFdEuENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsa5QsYiPB8Gl_5image.exit

bb.aw:                                            ; preds = %.thread, %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 4384
  invoke void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQFdEuINtB7_5FnMutTdEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fx, double noundef 1.000000e+00)
          to label %bb.ay unwind label %bb.ax, !noalias !3303

bb.ax:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB1p_5error5ErrorEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ai) #37
          to label %common.resume unwind label %bb.az, !noalias !3302

bb.ay:                                            ; preds = %bb.aw
  store i64 -2, ptr %0, align 8, !alias.scope !3304, !noalias !3301
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB1a_5error5ErrorEE7or_elseNCNvXs1_NtB18_6readerINtB2m_22OnProgressChunksReaderINtB2m_20FilteredChunksReaderINtNtNtB5_2io6cursor6CursorRShEEQFdEuENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsa5QsYiPB8Gl_5image.exit

bb.az:                                            ; preds = %bb.ax
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3302
  unreachable

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB1a_5error5ErrorEE7or_elseNCNvXs1_NtB18_6readerINtB2m_22OnProgressChunksReaderINtB2m_20FilteredChunksReaderINtNtNtB5_2io6cursor6CursorRShEEQFdEuENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.av, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not15 = icmp eq i64 %i.f, %i.g
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.017 = phi i64 [ %i.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.016 = phi ptr [ %.sroa.06.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.017, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 2736, i64 noundef 8) #33
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = load atomic ptr, ptr %.sroa.06.016 monotonic, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.016, i64 noundef 2736, i64 noundef 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 8
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %i.l, i64 %i.j ; 7 uses
  %i.n = load i64, ptr %i.m, align 8, !range !22, !alias.scope !3317, !noundef !7
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !3318 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.h
end_hunk_0
