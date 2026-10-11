Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zip-5b90237a4341212a.zip.81ebfe4d1498fe4c-cgu.01?download=true
inline.NumInlined: 78
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [27 x i8] c"ZIP64 extra field truncated", align 1
@1 = private unnamed_addr constant [42 x i8] c"ZIP64 extra-data field is the wrong length", align 1
@2 = private unnamed_addr constant [25 x i8] c"AES extra field truncated", align 1
@3 = private unnamed_addr constant [31 x i8] c"Invalid AES encryption strength", align 1
@4 = private unnamed_addr constant [26 x i8] c"Invalid AES vendor version", align 1
@5 = private unnamed_addr constant [18 x i8] c"Invalid AES vendor", align 1
@6 = private unnamed_addr constant [46 x i8] c"AES extra data field has an unsupported length", align 1
@7 = private unnamed_addr constant [33 x i8] c"\0CExtra field \C0\11 header truncated\00", align 1
@8 = private unnamed_addr constant [45 x i8] c"Can't write a custom field using the ZIP64 ID", align 1
@9 = private unnamed_addr constant [29 x i8] c"Extra field content truncated", align 1
@10 = private unnamed_addr constant [43 x i8] c"Extra field content exceeds declared length", align 1
@11 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/zip-8.6.0/src/read.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"Z\00\00\00\00\00\00\00`\02\00\00;\00\00\00" }>, align 8
@13 = private unnamed_addr constant [8 x i8] c"__MACOSX", align 1
@14 = private unnamed_addr constant [72 x i8] c"ZIP64 footer indicates more files on this disk than in the whole archive", align 1
@15 = private unnamed_addr constant [40 x i8] c"Invalid central directory size or offset", align 1
@switch.table._RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB3_24Zip64ExtendedInformation5parseINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i16 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp ugt i16 %2, 23                      ; 2 uses
  %i.d = load i64, ptr %3, align 8
  %i.e = icmp eq i64 %i.d, 4294967295
  %or.cond66 = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond66, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u64_leBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 5 uses
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ 8, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.j = load i64, ptr %4, align 8, !noundef !3
  %i.k = icmp eq i64 %i.j, 4294967295
  br i1 %i.k, label %bb.g, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr %i.h)
  %i.m = icmp eq i8 %i.l, 37
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.m, label %bb.ab, label %bb.ac

bb.e:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.h to i64
  store i64 %i.n, ptr %3, align 8
  br i1 %i.c, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i64, ptr } @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u64_leBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.s = tail call { i64, ptr } @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u64_leBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.8.0 = phi ptr [ %i.q, %bb.f ], [ %i.u, %bb.g ] ; 4 uses
  %i.w = tail call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr %.sroa.8.0)
  %i.x = icmp eq i8 %i.w, 37
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.x, label %bb.z, label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %4, align 8
  %i.z = add nuw nsw i64 %.sroa.0.0, 8
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.sroa.0.1 = phi i64 [ %i.z, %bb.i ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %i.aa = load i64, ptr %5, align 8, !noundef !3
  %i.ab = icmp eq i64 %i.aa, 4294967295
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.m
  %.sroa.0.2 = phi i64 [ 16, %bb.m ], [ %.sroa.0.1, %bb.j ]
  %i.ac = tail call { i64, ptr } @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u64_leBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 5 uses
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.o
  %.sroa.0.3 = phi i64 [ %i.am, %bb.o ], [ %.sroa.0.1, %bb.j ] ; 2 uses
  %i.ag = zext i16 %2 to i64                      ; 2 uses
  %i.ah = icmp samesign ugt i64 %.sroa.0.3, %i.ag
  br i1 %i.ah, label %bb.q, label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %i.q to i64
  store i64 %i.ai, ptr %4, align 8
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  %i.aj = tail call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr %i.ae)
  %i.ak = icmp eq i8 %i.aj, 37
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.x, label %bb.y

bb.o:                                             ; preds = %bb.k
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %5, align 8
  %i.am = add nuw nsw i64 %.sroa.0.2, 8
  br label %bb.l

bb.p:                                             ; preds = %bb.l
  %i.an = sub nuw nsw i64 %i.ag, %.sroa.0.3       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.an, ptr %i.ap, align 8
  %i.aq = call { i64, ptr } @_RINvNtNtCs2AWtUsOyxgP_3std2io4copy4copyINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtBE_4SinkECsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull %i.a) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.l
  store i64 -1, ptr %0, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 42, ptr %.sroa.556.0..sroa_idx, align 8
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.at = extractvalue { i64, ptr } %i.aq, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %i.at)
  %i.av = icmp eq i8 %i.au, 37
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.av, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  store i64 -1, ptr %0, align 8
  store ptr @0, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.562.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %i.at)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  store i64 -9223372036854775808, ptr %0, align 8
  store ptr %i.at, ptr %.sroa.461.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.ab, %bb.x, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.v, %bb.s
  ret void

bb.x:                                             ; preds = %bb.n
  store i64 -1, ptr %0, align 8
  store ptr @0, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.550.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %i.ae)
  br label %bb.w

bb.y:                                             ; preds = %bb.n
  store i64 -9223372036854775808, ptr %0, align 8
  store ptr %i.ae, ptr %.sroa.449.0..sroa_idx, align 8
  br label %bb.w

bb.z:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  store ptr @0, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %.sroa.8.0)
  br label %bb.w

bb.aa:                                            ; preds = %bb.h
  store i64 -9223372036854775808, ptr %0, align 8
  store ptr %.sroa.8.0, ptr %.sroa.443.0..sroa_idx, align 8
  br label %bb.w

bb.ab:                                            ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  store ptr @0, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.538.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %i.h)
  br label %bb.w

bb.ac:                                            ; preds = %bb.d
  store i64 -9223372036854775808, ptr %0, align 8
  store ptr %i.h, ptr %.sroa.437.0..sroa_idx, align 8
  br label %bb.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsb9zoKkpXuBA_3zip12extra_fields14aex_encryptionNtB5_13AexEncryption5parseINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i16 noundef %2, ptr noalias nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = icmp eq i16 %2, 7
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u16_leBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.f = load i16, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i16 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @6, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 46, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.467.0..sroa_idx, align 8
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i16, ptr %i.j, align 2, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u16_leBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.l = load i16, ptr %i.c, align 8, !range !4, !noundef !3
  %i.m = trunc nuw i16 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.470.0..sroa_idx, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.q = load i16, ptr %i.p, align 2, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  %i.r = call noundef ptr @_RNvXs_NtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtB6_4Read10read_exactCsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull %i.b, i64 noundef 1) ; 4 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %i.r)
  %i.t = icmp eq i8 %i.s, 37
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i16 %i.q, 17729
  br i1 %i.u, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  store ptr @2, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.577.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %i.r)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %0, align 8
  store ptr %i.r, ptr %.sroa.476.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.o, %bb.s, %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.m:                                             ; preds = %bb.i
  %.off = add i16 %i.k, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.i
  store i64 -1, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 18, ptr %.sroa.583.0..sroa_idx, align 8
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %.sroa.489.2.extract.shift = lshr i64 ptrtoint (ptr @4 to i64), 16
  %.sroa.489.2.extract.trunc = trunc nuw i64 %.sroa.489.2.extract.shift to i48
  store i64 -1, ptr %0, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 ptrtoint (ptr @4 to i16), ptr %.sroa.4100.0..sroa_idx, align 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i48 %.sroa.489.2.extract.trunc, ptr %.sroa.5101.0..sroa_idx, align 2
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.6102.0..sroa_idx, align 8
  br label %bb.l

bb.p:                                             ; preds = %bb.m
  %.sroa.626.8.insert.ext = zext nneg i16 %i.k to i64
  %i.v = load i8, ptr %i.b, align 1, !noundef !3  ; 2 uses
  %.off127 = add i8 %i.v, -1
  %switch128 = icmp ult i8 %.off127, 3
  br i1 %switch128, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.4108.1.extract.shift = lshr i64 ptrtoint (ptr @3 to i64), 8
  %.sroa.4108.1.extract.trunc = trunc nuw i64 %.sroa.4108.1.extract.shift to i56
  store i64 -1, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 ptrtoint (ptr @3 to i8), ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.4108.1.extract.trunc, ptr %.sroa.5119.0..sroa_idx, align 1
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %.sroa.6120.0..sroa_idx, align 8
  br label %bb.l

bb.r:                                             ; preds = %bb.p
  %.sroa.646.8.insert.ext = zext nneg i8 %i.v to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u16_leBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.w = load i16, ptr %i.a, align 8, !range !4, !noundef !3
  %i.x = trunc nuw i16 %i.w to i1
  br i1 %i.x, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.4122.0..sroa_idx, align 8
  br label %bb.l

bb.t:                                             ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsb9zoKkpXuBA_3zip.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsb9zoKkpXuBA_3zip.exit
    i64 1, label %bb.c
  ], !prof !5

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsb9zoKkpXuBA_3zip.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !3, !align !11, !noundef !3 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsb9zoKkpXuBA_3zip.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #15
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsb9zoKkpXuBA_3zip.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !12, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #15
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsb9zoKkpXuBA_3zip.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #15
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsb9zoKkpXuBA_3zip.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsb9zoKkpXuBA_3zip.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsb9zoKkpXuBA_3zip.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb9zoKkpXuBA_3zip4read24parse_single_extra_fieldINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(232) %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.661 = alloca [24 x i8], align 8          ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.555 = alloca [24 x i8], align 8          ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.539 = alloca [24 x i8], align 8          ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.521 = alloca [24 x i8], align 8          ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [28 x i8], align 4            ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [2 x i8], align 2                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u16_leBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.aa = load i16, ptr %i.z, align 8, !range !4, !noundef !3
  %i.ab = trunc nuw i16 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val143 = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ad = tail call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %.val143)
  %i.ae = icmp eq i8 %i.ad, 37
  br i1 %i.ae, label %bb.bw, label %bb.bx

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  switch i16 %i.ag, label %bb.d [
    i16 1, label %bb.e
    i16 10, label %bb.e
    i16 21589, label %bb.e
    i16 25461, label %bb.e
    i16 28789, label %bb.e
    i16 -24290, label %bb.e
    i16 -26367, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u16_leBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.ah = load i16, ptr %i.u, align 8, !range !4, !noundef !3
  %i.ai = trunc nuw i16 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %.thread186

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i16 %i.ag, ptr %i.y, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtNtCsb9zoKkpXuBA_3zip8unstable19LittleEndianReadExt11read_u16_leBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.aj = load i16, ptr %i.x, align 8, !range !4, !noundef !3
  %i.ak = trunc nuw i16 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val142 = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.am = tail call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %.val142)
  %i.an = icmp eq i8 %i.am, 37
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.y, ptr %i.v, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs2_NtCsb9zoKkpXuBA_3zip12extra_fieldsNtB5_14UsedExtraFieldNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.480.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @7, ptr noundef nonnull %i.v)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsb9zoKkpXuBA_3zip.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val142, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %.val142) #16
          to label %common.resume unwind label %bb.k

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsb9zoKkpXuBA_3zip.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsb9zoKkpXuBA_3zip(ptr nonnull %.val142)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsb9zoKkpXuBA_3zip.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bl

bb.k:                                             ; preds = %bb.i, %.body, %bb.bp, %bb.ba
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.bj, %bb.be, %bb.ba, %bb.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.be ], [ %i.ao, %bb.i ], [ %.pn135, %.body ], [ %i.ev, %bb.bj ], [ %i.eq, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val141 = load ptr, ptr %i.aq, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.ar = tail call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %.val141)
  %i.as = icmp eq i8 %i.ar, 37
  br i1 %i.as, label %bb.bm, label %bb.bn

.thread186:                                       ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.au = load i16, ptr %i.at, align 2, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.m

bb.m:                                             ; preds = %.thread186, %bb.o
  %.sroa.013.0189 = phi i16 [ %i.au, %.thread186 ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.av = zext i16 %.sroa.013.0189 to i64         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.av, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !21
  %i.aw = load i64, ptr %i.a, align 8, !range !7, !noalias !21, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !8, !noalias !21, !noundef !3 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.n, label %_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsb9zoKkpXuBA_3zip.exit, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !21
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #17, !noalias !21
  unreachable

_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsb9zoKkpXuBA_3zip.exit: ; preds = %bb.m
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !21, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  store i64 %i.az, ptr %i.f, align 8, !alias.scope !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !alias.scope !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.av, ptr %i.be, align 8, !alias.scope !21
  %i.bf = invoke noundef ptr @_RNvXs_NtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShENtB6_4Read10read_exactCsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull %i.bc, i64 noundef %i.av)
          to label %bb.bb unwind label %bb.ba     ; 4 uses

bb.o:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !noundef !3 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  switch i16 %i.ag, label %bb.p [
    i16 1, label %bb.q
    i16 10, label %bb.r
    i16 21589, label %bb.s
    i16 25461, label %bb.t
    i16 28789, label %bb.u
    i16 -26367, label %bb.v
    i16 -24290, label %bb.m
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  br i1 %4, label %bb.x, label %bb.w

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMNtNtCsb9zoKkpXuBA_3zip12extra_fields4ntfsNtB3_4Ntfs15try_from_readerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.bh)
  %i.bi = load i64, ptr %i.r, align 8, !range !7, !noundef !3
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.o
  call void @_RINvMs0_NtNtCsb9zoKkpXuBA_3zip12extra_fields18extended_timestampNtB6_17ExtendedTimestamp15try_from_readerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.bh)
  %i.bk = load i32, ptr %i.e, align 8, !range !22, !noundef !3
  %i.bl = trunc nuw i32 %i.bk to i1
  br i1 %i.bl, label %bb.ae, label %bb.af

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvMs_NtNtCsb9zoKkpXuBA_3zip12extra_fields12zipinfo_utf8NtB5_17UnicodeExtraField15try_from_readerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.bh)
  %i.bm = load i64, ptr %i.m, align 8, !range !7, !noundef !3
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.539, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.bn, label %bb.ah, label %bb.ai

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvMs_NtNtCsb9zoKkpXuBA_3zip12extra_fields12zipinfo_utf8NtB5_17UnicodeExtraField15try_from_readerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.bh)
  %i.bp = load i64, ptr %i.j, align 8, !range !7, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.bq, label %bb.ap, label %bb.aq

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 200
  call fastcc void @_RINvMs_NtNtCsb9zoKkpXuBA_3zip12extra_fields14aex_encryptionNtB5_13AexEncryption5parseINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef align 8 dereferenceable(24) %2, i16 noundef %i.bh, ptr noalias noundef align 2 dereferenceable(8) %i.bs, ptr noalias noundef align 2 dereferenceable(4) %i.bt)
  %i.bu = load i64, ptr %i.q, align 8, !range !10, !noundef !3
  %.not = icmp eq i64 %i.bu, -2
  br i1 %.not, label %bb.az, label %bb.ay

bb.w:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 223
  store i8 1, ptr %i.bv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 160
  call fastcc void @_RINvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB3_24Zip64ExtendedInformation5parseINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorRShEEB7_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef align 8 dereferenceable(24) %2, i16 noundef %i.bh, ptr noalias noundef align 8 dereferenceable(8) %i.bw, ptr noalias noundef align 8 dereferenceable(8) %i.bx, ptr noalias noundef align 8 dereferenceable(8) %i.by)
  %i.bz = load i64, ptr %i.s, align 8, !range !10, !noundef !3
  %.not131 = icmp eq i64 %i.bz, -2
  br i1 %.not131, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @8, ptr %.sroa.487.0..sroa_idx, align 8
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 45, ptr %.sroa.588.0..sroa_idx, align 8
  br label %bb.bl

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bl

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ca, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.bl

bb.aa:                                            ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.bl

bb.ab:                                            ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !23, !noalias !24, !noundef !3 ; 3 uses
  %i.cg = load i64, ptr %i.cc, align 8, !range !6, !alias.scope !23, !noalias !24, !noundef !3
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ac, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb9zoKkpXuBA_3zip12extra_fields10ExtraFieldE8push_mutBI_.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb9zoKkpXuBA_3zip12extra_fields10ExtraFieldE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc), !noalias !24
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb9zoKkpXuBA_3zip12extra_fields10ExtraFieldE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb9zoKkpXuBA_3zip12extra_fields10ExtraFieldE8push_mutBI_.exit: ; preds = %bb.ab, %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !23, !noalias !24, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cf ; 2 uses
  store i32 0, ptr %i.ck, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5, i64 28, i1 false)
  %i.cl = add i64 %i.cf, 1
  store i64 %i.cl, ptr %i.ce, align 8, !alias.scope !23, !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsb9zoKkpXuBA_3zip.exit, %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECsb9zoKkpXuBA_3zip.exit166, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECsb9zoKkpXuBA_3zip.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb9zoKkpXuBA_3zip12extra_fields10ExtraFieldE8push_mutBI_.exit165, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb9zoKkpXuBA_3zip12extra_fields10ExtraFieldE8push_mutBI_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cm, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.bl

bb.ae:                                            ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  br label %bb.bl

bb.af:                                            ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !25, !noalias !26, !noundef !3 ; 3 uses
end_hunk_1
