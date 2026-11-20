Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.056?download=true
inline.NumInlined: 719
inline.NumDeleted: 193
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor5state11BrotliStateNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocB1x_B1x_EECsl8OoimOLbh_6qdrant:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor5state23BlockTypeAndLengthStateNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %.val5, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw nsw i64 %.val5, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, 0) %i.c, i64 noundef 2) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit7, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = shl nuw nsw i64 %.val1, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef 2) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer18DecompressorWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  invoke void @_RNvXs5_NtCsp2A78R5H4l_19brotli_decompressor6writerINtB5_26DecompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtB7_11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB3n_9std_alloc13StandardAllocB4b_B4b_ENtNtNtB1q_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i.i = load i64, ptr %i.c, align 8, !alias.scope !99, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %.val8.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i.i = load ptr, ptr %i.e, align 8, !alias.scope !99, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %.val8.i.i, i64 noundef 1) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6.i.i = load i64, ptr %i.f, align 8, !alias.scope !99, !noundef !7 ; 2 uses
  %i.g = icmp eq i64 %.val6.i.i, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !99, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val6.i.i, i64 noundef 1) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !alias.scope !100, !noundef !7
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i: ; preds = %bb.e, %bb.d
  %i.k = load ptr, ptr %0, align 8, !alias.scope !101, !noundef !7
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.h, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.b, %bb.f ], [ %i.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val10.i.i = load ptr, ptr %i.m, align 8, !alias.scope !99, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr %.val10.i.i) #20
          to label %bb.l unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9.i.i = load ptr, ptr %i.o, align 8, !alias.scope !99, !noundef !7 ; 4 uses
  %i.p = icmp eq ptr %.val9.i.i, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  %i.q = ptrtoint ptr %.val9.i.i to i64           ; 2 uses
  %i.r = and i64 %i.q, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i
    i64 1, label %bb.k
  ], !prof !8

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ult ptr %.val9.i.i, inttoptr (i64 188978561024 to ptr)
  %i.t = and i64 %i.q, 1095216660480
  %i.u = icmp ne i64 %i.t, 1095216660480
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.assume(i1 %i.u)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %.val9.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !103, !noalias !102
  store i8 3, ptr %i.a, align 8, !alias.scope !103, !noalias !102
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %i.y, %bb.m ], [ %.pn2.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor5state11BrotliStateNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocB1x_B1x_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(2600) %i.x) #20
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.o:                                             ; preds = %bb.l
  resume { ptr, i32 } %.pn4.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor5state11BrotliStateNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocB1x_B1x_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(2600) %i.aa)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocB1E_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw nsw i64 %.val1, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef 4) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %.val3, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit6, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = shl nuw nsw i64 %.val3, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.g, i64 noundef 2) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsp2A78R5H4l_19brotli_decompressor7huffman11HuffmanCodeEECsl8OoimOLbh_6qdrant.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder7DecoderINtNtBI_7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBI_5error12PayloadErrorEEL_EEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !range !108, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.b, align 8            ; 10 uses
  switch i64 %.val, label %default.unreachable [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.h
    i64 3, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsef1ZxLeSXfJ_4zstd6stream5write7DecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c

common.resume.i.i:                                ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %.sink.i.i = phi i64 [ 2664, %bb.i ], [ 232, %bb.g ], [ 80, %bb.e ], [ 88, %bb.c ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.e, %bb.g ], [ %i.d, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.sink.i.i, i64 noundef 8) #18
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6EFb6a2W5dE_10actix_http7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBG_5error12PayloadErrorEEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #20
          to label %bb.j unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl0S4h5MD44r_6flate24zlib5write11ZlibDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl0S4h5MD44r_6flate22gz5write9GzDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer18DecompressorWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %.sink1.i.i = phi i64 [ 232, %bb.f ], [ 80, %bb.d ], [ 88, %bb.b ], [ 2664, %bb.h ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.sink1.i.i, i64 noundef 8) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderECsl8OoimOLbh_6qdrant.exit.i, %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6EFb6a2W5dE_10actix_http7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBG_5error12PayloadErrorEEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.l, %common.resume.i.i
  %.pn = phi { ptr, i32 } [ %i.j, %bb.l ], [ %common.resume.op.i.i, %common.resume.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !109, !noundef !7
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.o

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !110, !noundef !7
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit3, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit3: ; preds = %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %bb.k, %common.resume.i.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsef1ZxLeSXfJ_4zstd6stream5write7DecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !117, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs6_CslcsSwNUypC5_9zstd_safeNtB5_4DCtxNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #20
          to label %common.resume.i unwind label %bb.g

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsef1ZxLeSXfJ_4zstd6stream3zio6writer6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBI_3raw7DecoderEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i, %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsef1ZxLeSXfJ_4zstd6stream3zio6writer6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBI_3raw7DecoderEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl0S4h5MD44r_6flate22gz5write9GzDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs4_NtCsl0S4h5MD44r_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtB7_3mem10DecompressENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !range !126, !alias.scope !127, !noundef !7
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !range !126, !alias.scope !128, !noundef !7
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.f, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val4.i = load ptr, ptr %i.j, align 8, !alias.scope !129, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef 43296, i64 noundef 8) #18
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) #20
          to label %.body unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !129, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 43296, i64 noundef 8) #18
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterINtNtBG_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit unwind label %bb.k

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
