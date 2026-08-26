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

bb.w:                                             ; preds = %bb.z, %bb.x, %bb.ab, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.v, %bb.s
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
  switch i16 %i.ab, label %bb.x [
    i16 0, label %bb.u
    i16 8, label %bb.v
    i16 93, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.u
  %.sroa.051.0 = phi i16 [ 2, %bb.w ], [ 0, %bb.u ], [ 1, %bb.v ], [ 3, %bb.t ] ; 2 uses
  %.sroa.665.0.insert.ext = zext i16 %i.ab to i64
  %.sroa.665.0.insert.shift = shl nuw i64 %.sroa.665.0.insert.ext, 48
  %.sroa.564.0.insert.ext = zext nneg i16 %.sroa.051.0 to i64
  %.sroa.564.0.insert.shift = shl nuw nsw i64 %.sroa.564.0.insert.ext, 32
  %.sroa.564.0.insert.insert = or disjoint i64 %.sroa.564.0.insert.shift, %.sroa.665.0.insert.shift
  %.sroa.462.0.insert.shift = shl nuw nsw i64 %.sroa.646.8.insert.ext, 16
end_hunk_0
