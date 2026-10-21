Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@deflate

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail17gzip_decompressorC2Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 9), (16, 128)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7httplib6detail17gzip_decompressorE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !410
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, i8 0, i64 112, i1 false)
  %i.c = tail call i32 @inflateInit2_(ptr noundef nonnull %i.b, i32 noundef 47, ptr noundef nonnull @.str.112, i32 noundef 112)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 8, !tbaa !410
  ret void
}

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail17gzip_decompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = invoke i32 @inflateEnd(ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #48
  unreachable
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail17gzip_decompressorD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail17gzip_decompressorD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7httplib6detail17gzip_decompressor8is_validEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !410, !range !191, !noundef !192
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail17gzip_decompressor10decompressEPKcmSt8functionIFbS3_mEE(ptr noundef nonnull align 8 dereferenceable(128) initializes((16, 28)) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.std::array.223", align 1   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.0 = phi i64 [ %2, %bb.a ], [ %i.j, %bb.h ]    ; 2 uses
  %.013 = phi ptr [ %1, %bb.a ], [ %i.k, %bb.h ]  ; 2 uses
  %.09 = phi i32 [ 0, %bb.a ], [ %.1, %bb.h ]
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0, i64 4294967295) ; 3 uses
  %i.i = trunc nuw i64 %.sroa.speculated to i32
  store i32 %i.i, ptr %i.d, align 8, !tbaa !1483
  store ptr %.013, ptr %i.c, align 8, !tbaa !1484
  %i.j = sub i64 %.0, %.sroa.speculated           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.013, i64 %.sroa.speculated
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %4, i8 0, i64 16384, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit, %bb.b
  %.1 = phi i32 [ %.09, %bb.b ], [ %i.p, %_ZNKSt8functionIFbPKcmEEclES1_m.exit ] ; 3 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !1483
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp eq i32 %.1, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i32 16384, ptr %i.e, align 8, !tbaa !1485
  store ptr %4, ptr %i.f, align 8, !tbaa !1486
  %i.p = call i32 @inflate(ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  switch i32 %i.p, label %bb.f [
    i32 2, label %bb.e
    i32 -3, label %bb.e
    i32 -4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.q = call i32 @inflateEnd(ptr noundef nonnull %i.c) ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.e, align 8, !tbaa !1485
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 16384, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %4, ptr %i.a, align 8, !tbaa !310
  store i64 %i.t, ptr %i.b, align 8, !tbaa !190
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !256
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.g, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit:             ; preds = %bb.f
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !403
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.w, label %bb.c, label %.thread, !llvm.loop !1481

.thread:                                          ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %or.cond = icmp ult i32 %.1, 2                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not = icmp ne i64 %i.j, 0
  %or.cond14.not = select i1 %or.cond, i1 %.not, i1 false
  br i1 %or.cond14.not, label %bb.b, label %.loopexit, !llvm.loop !1482

.loopexit:                                        ; preds = %bb.h, %.thread
  %cond25 = phi i1 [ false, %.thread ], [ %or.cond, %bb.h ]
  ret i1 %cond25
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail17brotli_compressorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7httplib6detail17brotli_compressorE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !413
  %i.b = tail call ptr @BrotliEncoderCreateInstance(ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !413
  ret void
}

declare ptr @BrotliEncoderCreateInstance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail17brotli_compressorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413
  invoke void @BrotliEncoderDestroyInstance(ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #48
  unreachable
}

declare void @BrotliEncoderDestroyInstance(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail17brotli_compressorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail17brotli_compressorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #46
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail17brotli_compressor8compressEPKcmbSt8functionIFbS3_mEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef align 8 dereferenceable(32) %4) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %"struct.std::array.224", align 1   ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 11 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %5, i8 0, i64 16384, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %2, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %1, ptr %i.d, align 8, !tbaa !310
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %3, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.k = tail call i32 @BrotliEncoderIsFinished(ptr noundef %i.j)
  %.not11.us17 = icmp eq i32 %i.k, 0
  br i1 %.not11.us17, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.split.us, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 16384, ptr %i.e, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %5, ptr %i.f, align 8, !tbaa !310
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.m = call i32 @BrotliEncoderCompressStream(ptr noundef %i.l, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef null)
  %.not12.not.us = icmp eq i32 %i.m, 0
  br i1 %.not12.not.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph18
  %i.n = load i64, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  %.not13.us = icmp eq i64 %i.n, 16384
  br i1 %.not13.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sub i64 16384, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %5, ptr %i.a, align 8, !tbaa !310
  store i64 %i.o, ptr %i.b, align 8, !tbaa !190
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !256
  %.not.i.i.us = icmp eq ptr %i.p, null
  br i1 %.not.i.i.us, label %.split15.us, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit.us

_ZNKSt8functionIFbPKcmEEclES1_m.exit.us:          ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !403
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.t = call i32 @BrotliEncoderIsFinished(ptr noundef %i.s)
  %.not11.us = icmp eq i32 %i.t, 0
  br i1 %.not11.us, label %.lr.ph18, label %.loopexit, !llvm.loop !1487

.split:                                           ; preds = %bb.a
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 16384, ptr %i.e, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %5, ptr %i.f, align 8, !tbaa !310
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.v = call i32 @BrotliEncoderCompressStream(ptr noundef %i.u, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef null)
  %.not12.not = icmp eq i32 %i.v, 0
  br i1 %.not12.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.w = load i64, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  %.not13 = icmp eq i64 %i.w, 16384
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sub i64 16384, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %5, ptr %i.a, align 8, !tbaa !310
  store i64 %i.x, ptr %i.b, align 8, !tbaa !190
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !256
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.split15.us, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit

.split15.us:                                      ; preds = %bb.f, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit:             ; preds = %bb.f
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !403
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZNKSt8functionIFbPKcmEEclES1_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !190
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1487

.critedge:                                        ; preds = %.lr.ph, %.lr.ph18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.d, %.split.us, %.split, %.critedge
  %.2 = phi i1 [ false, %.critedge ], [ true, %.split ], [ true, %bb.d ], [ true, %.split.us ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.2
}

declare i32 @BrotliEncoderIsFinished(ptr noundef) local_unnamed_addr #14

declare i32 @BrotliEncoderCompressStream(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail19brotli_decompressorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 24)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7httplib6detail19brotli_decompressorE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !417
  %i.b = tail call ptr @BrotliDecoderCreateInstance(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !417
  %.not = icmp eq ptr %i.b, null
  %i.c = select i1 %.not, i32 0, i32 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !418
  ret void
}

declare ptr @BrotliDecoderCreateInstance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail19brotli_decompressorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @BrotliDecoderDestroyInstance(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #48
  unreachable
}

declare void @BrotliDecoderDestroyInstance(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail19brotli_decompressorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail19brotli_decompressorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7httplib6detail19brotli_decompressor8is_validEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail19brotli_decompressor10decompressEPKcmSt8functionIFbS3_mEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"struct.std::array.223", align 1   ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !418
  %switch = icmp ult i32 %i.i, 2
  br i1 %switch, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %1, ptr %i.c, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %2, ptr %i.d, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 3, ptr %i.h, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %4, i8 0, i64 16384, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

thread-pre-split:                                 ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit
  %.pr = load i32, ptr %i.h, align 8, !tbaa !418
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.m = phi i32 [ %.pr, %thread-pre-split ], [ 3, %bb.b ]
  switch i32 %i.m, label %switch.edge [
    i32 3, label %bb.d
    i32 1, label %switch.edge.loopexit
    i32 2, label %switch.edge.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %4, ptr %i.f, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 16384, ptr %i.g, align 8, !tbaa !190
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !417
  %i.o = call i32 @BrotliDecoderDecompressStream(ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) ; 2 uses
  store i32 %i.o, ptr %i.h, align 8, !tbaa !418
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.g, align 8, !tbaa !190
  %i.r = sub i64 16384, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %4, ptr %i.a, align 8, !tbaa !310
  store i64 %i.r, ptr %i.b, align 8, !tbaa !190
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !256
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit:             ; preds = %bb.e
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !403
  %i.u = call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br i1 %i.u, label %thread-pre-split, label %switch.edge, !llvm.loop !1488

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %switch.edge

switch.edge.loopexit:                             ; preds = %bb.c, %bb.c
  br label %switch.edge

switch.edge:                                      ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit, %bb.c, %switch.edge.loopexit, %.critedge
  %.2 = phi i1 [ true, %switch.edge.loopexit ], [ false, %.critedge ], [ false, %bb.c ], [ false, %_ZNKSt8functionIFbPKcmEEclES1_m.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
end_hunk_0
begin_hunk_1_@_ZNK7httplib7Request9has_paramERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !176, !noalias !1993
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %.pre16.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !48

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !176, !noalias !1993
  %i.q = icmp eq i64 %i.p, %.fr7.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !189, !noalias !1993
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr7.i), !noalias !1993
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %.pre16.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit, label %.lr.ph.i.split.i, !llvm.loop !48

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i ] ; 2 uses
  %i.u = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.u, i64 %.pre16.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i
  %.us-phi.sink28.i = phi i64 [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i ], [ 0, %bb.a ], [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ]
  %i.v = icmp ne i64 %.us-phi.sink28.i, %.pre16.i
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib7Request15get_param_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(776) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_ZN7httplib6detail18get_multimap_valueINS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EEEEENT_11mapped_typeERKSC_RKS8_m(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7httplib6detail18get_multimap_valueINS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EEEEENT_11mapped_typeERKSC_RKS8_m(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.httplib::detail::insertion_ordered_multimap<std::__cxx11::basic_string<char>, std::equal_to<std::__cxx11::basic_string<char>>>::iterator_t", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218, !noalias !1996 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !217, !noalias !1996 ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  %.pre.i = ptrtoint ptr %i.c to i64
  %.pre24.i = ptrtoint ptr %i.d to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = ashr exact i64 %.pre26.i, 6         ; 7 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176, !noalias !1996
  %.fr19.i = freeze i64 %i.f                      ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !noalias !1996
  %i.h = icmp eq i64 %.fr19.i, 0
  br i1 %i.h, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !176, !noalias !1996
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %.pre28.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !48

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !176, !noalias !1996
  %i.q = icmp eq i64 %i.p, %.fr19.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !189, !noalias !1996
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr19.i), !noalias !1996
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %.pre28.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.i, !llvm.loop !48

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i ] ; 3 uses
  %i.u = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.u, i64 %.pre28.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i
  %.us-phi.sink42.i = phi i64 [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i ], [ 0, %bb.a ], [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ]
  %.us-phi.sink.i = phi i64 [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ %.us-phi.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i ], [ -1, %bb.a ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.d, ptr %4, align 8, !tbaa !336
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.us-phi.sink42.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre28.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.us-phi.sink.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !190
  call void @_ZSt9__advanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEElEvRT_T0_St26bidirectional_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %3)
  %i.v = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !563 ; 2 uses
  %.not = icmp eq i64 %i.v, %.pre28.i
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !1997
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !175
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !189 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !190
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !189
  %i.af = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.af, ptr %i.z, align 8, !tbaa !177
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.z, %bb.b ] ; 2 uses
  switch i64 %i.ac, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !177
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !176
  %i.ak = load ptr, ptr %0, align 8, !tbaa !189
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !175
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !176
  store i8 0, ptr %i.am, align 8, !tbaa !177
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib7Request16get_param_valuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.104") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218, !noalias !2001 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !217, !noalias !2001 ; 12 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  %.pre.i = ptrtoint ptr %i.d to i64
  %.pre24.i = ptrtoint ptr %i.e to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = ashr exact i64 %.pre26.i, 6         ; 17 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !176, !noalias !2001
  %.fr19.i = freeze i64 %i.g                      ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !noalias !2001
  %i.i = icmp eq i64 %.fr19.i, 0
  br i1 %i.i, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.n, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.0711.i.us.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !176, !noalias !2001
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.n = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.n, %.pre28.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, label %.lr.ph.i.split.us.i, !llvm.loop !48

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.u, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.0711.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !176, !noalias !2001
  %i.r = icmp eq i64 %i.q, %.fr19.i
  br i1 %i.r, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !189, !noalias !2001
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.s, ptr %i.h, i64 %.fr19.i), !noalias !2001
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.i
  %i.u = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.pre28.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !48

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i ]
  %.fr15.i = freeze i64 %.us-phi.i                ; 9 uses
  %i.v = icmp eq i64 %.fr15.i, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not6.i.a = icmp eq i64 %.fr15.i, %.pre28.i
  %.not6.i = select i1 %i.v, i1 true, i1 %.not6.i.a
  br i1 %.not6.i, label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.fr15.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i
  %.08.i = phi i64 [ %i.ax, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.us-phi57.i = phi i64 [ %.us-phi4.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ], [ %.fr15.i, %.lr.ph.i ] ; 4 uses
  %.not.i.i6 = icmp ult i64 %.us-phi57.i, %.pre28.i
  br i1 %.not.i.i6, label %bb.b, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.y = add nuw i64 %.us-phi57.i, 1              ; 5 uses
  %i.z = icmp ult i64 %i.y, %.pre28.i
  br i1 %i.z, label %.lr.ph.i.i7, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i

.lr.ph.i.i7:                                      ; preds = %bb.b
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !176
  %.fr16.i = freeze i64 %i.aa                     ; 3 uses
  %i.ab = icmp eq i64 %.fr16.i, 0
  br i1 %i.ab, label %.lr.ph.i.split.us.i10, label %.lr.ph.i.split.i8

.lr.ph.i.split.us.i10:                            ; preds = %.lr.ph.i.i7
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader: ; preds = %.lr.ph.i.split.us.i10
  %i.ag = add i64 %.us-phi57.i, 2                 ; 2 uses
  %exitcond.not.i.us.i11148 = icmp eq i64 %i.ag, %.pre28.i
  br i1 %exitcond.not.i.us.i11148, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, label %.lr.ph149, !llvm.loop !49

.lr.ph149:                                        ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader
  br label %bb.c, !llvm.loop !49

bb.c:                                             ; preds = %.lr.ph149, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i
  %i.ah = phi i64 [ %i.ag, %.lr.ph149 ], [ %i.am, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !176
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i, !llvm.loop !49

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i: ; preds = %bb.c
  %i.am = add i64 %i.ah, 1                        ; 2 uses
  %exitcond.not.i.us.i11 = icmp eq i64 %i.am, %.pre28.i
  br i1 %exitcond.not.i.us.i11, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, label %bb.c, !llvm.loop !49

.lr.ph.i.split.i8:                                ; preds = %.lr.ph.i.i7, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i
  %i.an = phi i64 [ %i.av, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i ], [ %i.y, %.lr.ph.i.i7 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !176
  %i.ar = icmp eq i64 %i.aq, %.fr16.i
  br i1 %i.ar, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i: ; preds = %.lr.ph.i.split.i8
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !189
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !189
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.as, i64 %.fr16.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i, %.lr.ph.i.split.i8
  %i.av = add i64 %i.an, 1                        ; 2 uses
  %exitcond.not.i.i9 = icmp eq i64 %i.av, %.pre28.i
  br i1 %exitcond.not.i.i9, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, label %.lr.ph.i.split.i8, !llvm.loop !49

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i
  %i.aw = add nuw nsw i64 %.08.i, 1
  br label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i, %bb.c, %.lr.ph.i.split.us.i10, %bb.b, %.lr.ph.split.i
  %.us-phi4.i = phi i64 [ %i.y, %bb.b ], [ %.us-phi57.i, %.lr.ph.split.i ], [ %i.y, %.lr.ph.i.split.us.i10 ], [ %i.ah, %bb.c ], [ %i.an, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i ] ; 2 uses
  %i.ax = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %.us-phi4.i, %.pre28.i
  br i1 %.not.i, label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit, label %.lr.ph.split.i, !llvm.loop !2000

_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %.us-phi.sink.i56 = phi i64 [ %.fr15.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread ], [ -1, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ] ; 2 uses
  %.us-phi.sink42.i55 = phi i64 [ %.pre28.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread ], [ %.pre28.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit ], [ %i.aw, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread ], [ 0, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread ], [ %i.ax, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0.lcssa.i)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit
  %.not75 = icmp eq i64 %.us-phi.sink42.i55, %.pre28.i
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not3.i = icmp ne i64 %.us-phi.sink.i56, -1
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.us-phi.sink.i56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us, %.preheader
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.noexc.i.i, %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp153

bb.d:                                             ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit
  %.sroa.6.076 = phi i64 [ %.us-phi.sink42.i55, %.lr.ph ], [ %.sroa.6.2, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.6.076 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !471 ; 8 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !480
  %.not.i13 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !175
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !189 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !190
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !189
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !177
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.bn = phi ptr [ %i.bl, %.noexc ], [ %i.bg, %bb.e ] ; 2 uses
  switch i64 %i.bj, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !177
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !176
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !189
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bt = load ptr, ptr %i.ay, align 8, !tbaa !471
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store ptr %i.bu, ptr %i.ay, align 8, !tbaa !471
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.h
  %.not.i15 = icmp ult i64 %.sroa.6.076, %.pre28.i
  br i1 %.not.i15, label %bb.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bv = add nuw i64 %.sroa.6.076, 1             ; 4 uses
  %i.bw = icmp ult i64 %i.bv, %.pre28.i
  %or.cond.i = select i1 %.not3.i, i1 %i.bw, i1 false
  br i1 %or.cond.i, label %.lr.ph.i16, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

.lr.ph.i16:                                       ; preds = %bb.i
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !176
  %.fr77 = freeze i64 %i.bx                       ; 3 uses
  %i.by = icmp eq i64 %.fr77, 0
  br i1 %i.by, label %.lr.ph.i16.split.us, label %.lr.ph.i16.split

.lr.ph.i16.split.us:                              ; preds = %.lr.ph.i16, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us
  %.sroa.6.1.us = phi i64 [ %i.cd, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us ], [ %i.bv, %.lr.ph.i16 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.6.1.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us: ; preds = %.lr.ph.i16.split.us
  %i.cd = add i64 %.sroa.6.1.us, 1                ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cd, %.pre28.i
  br i1 %exitcond.not.i.us, label %._crit_edge, label %.lr.ph.i16.split.us, !llvm.loop !49

.lr.ph.i16.split:                                 ; preds = %.lr.ph.i16, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i
  %.sroa.6.1 = phi i64 [ %i.cl, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i ], [ %i.bv, %.lr.ph.i16 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.6.1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !176
  %i.ch = icmp eq i64 %i.cg, %.fr77
  br i1 %i.ch, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i: ; preds = %.lr.ph.i16.split
  %i.ci = load ptr, ptr %i.ba, align 8, !tbaa !189
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !189
  %bcmp.i.i.i.i.i17 = call i32 @bcmp(ptr %i.cj, ptr %i.ci, i64 %.fr77)
  %i.ck = icmp eq i32 %bcmp.i.i.i.i.i17, 0
  br i1 %i.ck, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, %.lr.ph.i16.split
  %i.cl = add i64 %.sroa.6.1, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %.pre28.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph.i16.split, !llvm.loop !49

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, %.lr.ph.i16.split.us, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.i
  %.sroa.6.2 = phi i64 [ %.sroa.6.076, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %i.bv, %bb.i ], [ %.sroa.6.1.us, %.lr.ph.i16.split.us ], [ %.sroa.6.1, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.6.2, %.pre28.i
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7httplib7Request21get_param_value_countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !336  ; 3 uses
  %.not12.i = icmp eq ptr %i.b, %i.d
  br i1 %.not12.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176
  %.fr2 = freeze i64 %i.f                         ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq i64 %.fr2, 0
  br i1 %i.h, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.014.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.06.013.i.us = phi ptr [ %i.m, %.lr.ph.i.split.us ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !176
  %i.k = icmp eq i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %.014.i.us, %i.l         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 64 ; 2 uses
  %.not.i.us = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.us, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i
  %.014.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.06.013.i = phi ptr [ %i.u, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !176
  %i.p = icmp eq i64 %i.o, %.fr2
  br i1 %i.p, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i: ; preds = %.lr.ph.i.split
  %i.q = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !189
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.g, i64 %.fr2)
  %bcmp.i.i.i.fr.i = freeze i32 %bcmp.i.i.i.i
  %i.r = icmp eq i32 %bcmp.i.i.i.fr.i, 0
  %i.s = zext i1 %i.r to i64
  %spec.select.i = add i64 %.014.i, %i.s
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i, %.lr.ph.i.split
  %i.t = phi i64 [ %.014.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit, label %.lr.ph.i.split

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i, %.lr.ph.i.split.us, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph.i.split.us ], [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ]
  ret i64 %.0.lcssa.i
}

end_hunk_1
begin_hunk_2_@_ZN7httplib3tls12get_ca_namesB5cxx11EPv:bb.a

bb.ak:                                            ; preds = %bb.a, %bb.c, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7httplib3tls16get_verify_errorEPKv(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @SSL_get_verify_result(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib2ws9WebSocket10send_frameENS0_6OpcodeEPKcmb(ptr noundef nonnull align 8 dereferenceable(960) %0, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8, !range !191, !noundef !192
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.h = load i8, ptr %i.g, align 8, !tbaa !809, !range !191, !noundef !192
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  %i.k = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.f, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %i.j)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.0 = phi i1 [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.k, %bb.c ]
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7httplib2ws9WebSocket4readERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 812 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 29
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.a
  %.022 = phi i32 [ undef, %bb.a ], [ %.426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %i.s = load atomic i8, ptr %i.e seq_cst, align 8, !range !191, !noundef !192
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.f, ptr %2, align 8, !tbaa !175
  store i64 0, ptr %i.g, align 8, !tbaa !176
  store i8 0, ptr %i.f, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.u = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.v = load i8, ptr %i.h, align 8, !tbaa !809, !range !191, !noundef !192
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = invoke noundef zeroext i1 @_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext %i.w, i64 noundef 16777216)
          to label %bb.d unwind label %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i8 1, ptr %i.e seq_cst, align 8
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.a, align 1, !tbaa !303   ; 2 uses
  switch i8 %i.y, label %bb.ba [
    i8 9, label %bb.g
    i8 10, label %bb.j
    i8 8, label %bb.k
    i8 1, label %bb.o
    i8 2, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %.invoke

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.ab = load ptr, ptr %2, align 8, !tbaa !189
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !176
  %i.ad = load i8, ptr %i.h, align 8, !tbaa !809, !range !191, !noundef !192
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = xor i1 %i.ae, true
  %i.ag = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i8 noundef zeroext 10, ptr noundef %i.ab, i64 noundef %i.ac, i1 noundef zeroext true, i1 noundef zeroext %i.af)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %bb.bb

bb.j:                                             ; preds = %bb.f
  %i.ak = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #23 ; 2 uses
  %.not.i.i41 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i41, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43, label %.invoke

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43:        ; preds = %bb.j
  store i32 0, ptr %i.o, align 4, !tbaa !812
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #23 ; 0 uses
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %bb.f
  %i.am = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 2 uses
  %.not.i.i44 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i44, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46, label %.invoke

.invoke:                                          ; preds = %bb.l, %bb.j, %bb.g
  %i.ap = phi i32 [ %i.ak, %bb.j ], [ %i.z, %bb.g ], [ %i.ao, %bb.l ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ap) #47
          to label %.cont unwind label %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46:        ; preds = %bb.l
  %i.aq = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.ar = load ptr, ptr %2, align 8, !tbaa !189
  %i.as = load i64, ptr %i.g, align 8, !tbaa !176
  %i.at = load i8, ptr %i.h, align 8, !tbaa !809, !range !191, !noundef !192
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = xor i1 %i.au, true
  %i.aw = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i8 noundef zeroext 8, ptr noundef %i.ar, i64 noundef %i.as, i1 noundef zeroext true, i1 noundef zeroext %i.av)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46
  %i.ax = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %.invoke
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.n:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %bb.bb

bb.o:                                             ; preds = %bb.f, %bb.f
  %i.ba = icmp eq i8 %i.y, 1
  %i.bb = load ptr, ptr %1, align 8, !tbaa !189   ; 6 uses
  %i.bc = icmp eq ptr %i.bb, %i.i
  %i.bd = load ptr, ptr %2, align 8, !tbaa !189   ; 5 uses
  %i.be = icmp eq ptr %i.bd, %i.f                 ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.be, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.be, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !176 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  switch i64 %i.bf, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !177
  store i8 %i.bh, ptr %i.bb, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !176 ; 2 uses
  store i64 %i.bi, ptr %i.j, align 8, !tbaa !176
  %i.bj = load ptr, ptr %1, align 8, !tbaa !189
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !177
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bd, ptr %1, align 8, !tbaa !189
  %i.bl = load <2 x i64>, ptr %i.g, align 8, !tbaa !177
  store <2 x i64> %i.bl, ptr %i.j, align 8, !tbaa !177
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !177
  store ptr %i.bd, ptr %1, align 8, !tbaa !189
  %i.bn = load <2 x i64>, ptr %i.g, align 8, !tbaa !177
  store <2 x i64> %i.bn, ptr %i.j, align 8, !tbaa !177
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bb, ptr %2, align 8, !tbaa !189
  store i64 %i.bm, ptr %i.f, align 8, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %2, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.bo = phi ptr [ %i.bb, %bb.s ], [ %i.f, %bb.t ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.g, align 8, !tbaa !176
  store i8 0, ptr %i.bo, align 1, !tbaa !177
  %i.bp = load i8, ptr %i.b, align 1, !tbaa !301, !range !191, !noundef !192
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.loopexit87, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.k, ptr %3, align 8, !tbaa !175
  store i64 0, ptr %i.l, align 8, !tbaa !176
  store i8 0, ptr %i.k, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.br = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !809, !range !191, !noundef !192
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = invoke noundef zeroext i1 @_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm(ptr noundef nonnull align 8 dereferenceable(12) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i1 noundef zeroext %i.bt, i64 noundef 16777216)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.preheader
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.e seq_cst, align 8
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %i.bv = load i8, ptr %i.c, align 1, !tbaa !303
  switch i8 %i.bv, label %bb.ae [
    i8 9, label %bb.x
    i8 10, label %bb.z
    i8 8, label %bb.aa
    i8 0, label %bb.af
  ]

bb.x:                                             ; preds = %bb.w
  %i.bw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 2 uses
  %.not.i.i47 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i47, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit49, label %.invoke218

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit49:        ; preds = %bb.x
  %i.bx = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.by = load ptr, ptr %3, align 8, !tbaa !189
  %i.bz = load i64, ptr %i.l, align 8, !tbaa !176
  %i.ca = load i8, ptr %i.h, align 8, !tbaa !809, !range !191, !noundef !192
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = xor i1 %i.cb, true
  %i.cd = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, i8 noundef zeroext 10, ptr noundef %i.by, i64 noundef %i.bz, i1 noundef zeroext true, i1 noundef zeroext %i.cc)
          to label %..si.unfold.false.jt5.sink.split unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit49
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %bb.al

bb.z:                                             ; preds = %bb.w
  %i.cg = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #23 ; 2 uses
  %.not.i.i50 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i50, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit52, label %.invoke218

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit52:        ; preds = %bb.z
  store i32 0, ptr %i.o, align 4, !tbaa !812
  br label %..si.unfold.false.jt5.sink.split

bb.aa:                                            ; preds = %bb.w
  %i.ch = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 2 uses
  %.not.i.i53 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i53, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55, label %.invoke218

.invoke218:                                       ; preds = %bb.ab, %bb.z, %bb.x
  %i.ck = phi i32 [ %i.cg, %bb.z ], [ %i.bw, %bb.x ], [ %i.cj, %bb.ab ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ck) #47
          to label %.cont219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont219:                                         ; preds = %.invoke218
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55:        ; preds = %bb.ab
  %i.cl = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.cm = load ptr, ptr %3, align 8, !tbaa !189
  %i.cn = load i64, ptr %i.l, align 8, !tbaa !176
  %i.co = load i8, ptr %i.h, align 8, !tbaa !809, !range !191, !noundef !192
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = xor i1 %i.cp, true
  %i.cr = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.cl, i8 noundef zeroext 8, ptr noundef %i.cm, i64 noundef %i.cn, i1 noundef zeroext true, i1 noundef zeroext %i.cq)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55
  %i.cs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %bb.ak

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.invoke218, %bb.ag
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ad:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #23 ; 0 uses
  br label %bb.al

bb.ae:                                            ; preds = %bb.w
  store atomic i8 1, ptr %i.e seq_cst, align 8
  br label %bb.ak

bb.af:                                            ; preds = %bb.w
  %i.cv = load i64, ptr %i.l, align 8, !tbaa !176 ; 2 uses
  %i.cw = load i64, ptr %i.j, align 8, !tbaa !176
  %i.cx = sub i64 4611686018427387903, %i.cw
  %i.cy = icmp ult i64 %i.cx, %i.cv
  br i1 %i.cy, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.af
  %i.cz = load ptr, ptr %3, align 8, !tbaa !189
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cz, i64 noundef %i.cv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.db = load i64, ptr %i.j, align 8, !tbaa !176
  %i.dc = icmp ugt i64 %i.db, 16777216
  br i1 %i.dc, label %bb.ah, label %bb.ai

end_hunk_2
begin_hunk_3_@_ZN7httplib2ws9WebSocket4readERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.do = load i64, ptr %i.k, align 8, !tbaa !177
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt5: ; preds = %..si.unfold.false.jt5
  %i.dq = load i64, ptr %i.k, align 8, !tbaa !177
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dr) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt6: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.loopexit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt5: ; preds = %..si.unfold.false.jt5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.preheader, !llvm.loop !2736

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.y
  %.pn30.pn = phi { ptr, i32 } [ %i.ct, %bb.ad ], [ %i.ce, %bb.y ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ds = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.k
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.al
  %i.du = load i64, ptr %i.k, align 8, !tbaa !177
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bb

.loopexit87:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ba, label %bb.am, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.am:                                            ; preds = %.loopexit87
  %i.dw = load i64, ptr %i.j, align 8, !tbaa !176 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.dy = load ptr, ptr %1, align 8, !tbaa !189
  br label %bb.an

bb.an:                                            ; preds = %bb.ax, %.lr.ph.i
  %.05276.i = phi i64 [ 0, %.lr.ph.i ], [ %.153.i, %bb.ax ] ; 3 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 %.05276.i ; 4 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !177 ; 2 uses
  %i.eb = zext i8 %i.ea to i32                    ; 4 uses
  %i.ec = icmp sgt i8 %i.ea, -1
  br i1 %i.ec, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nuw i64 %.05276.i, 1
  br label %bb.ax, !llvm.loop !10

bb.ap:                                            ; preds = %bb.an
  %i.ee = and i32 %i.eb, 224
  %i.ef = icmp eq i32 %i.ee, 192                  ; 3 uses
  br i1 %i.ef, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eg = and i32 %i.eb, 240
  %i.eh = icmp eq i32 %i.eg, 224
  br i1 %i.eh, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = and i32 %i.eb, 248
  %i.ej = icmp eq i32 %i.ei, 240
  br i1 %i.ej, label %bb.as, label %._crit_edge.i.i

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sink.i = phi i32 [ 31, %bb.ap ], [ 15, %bb.aq ], [ 7, %bb.ar ]
  %i.ek = phi i1 [ false, %bb.ap ], [ true, %bb.aq ], [ false, %bb.ar ] ; 2 uses
  %i.el = phi i1 [ false, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ]
  %.051.i = phi i64 [ 2, %bb.ap ], [ 3, %bb.aq ], [ 4, %bb.ar ]
  %i.em = add i64 %.051.i, %.05276.i              ; 2 uses
  %i.en = icmp ugt i64 %i.em, %i.dw
  br i1 %i.en, label %._crit_edge.i.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.as
  %i.eo = and i32 %.sink.i, %i.eb                 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dz, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !177
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = and i32 %i.er, 192
  %.not.i61 = icmp eq i32 %i.es, 128
  br i1 %.not.i61, label %bb.at, label %._crit_edge.i.i

bb.at:                                            ; preds = %.preheader.i.preheader
  %i.et = shl nuw nsw i32 %i.eo, 6                ; 2 uses
  %i.eu = and i32 %i.er, 63
  %i.ev = or disjoint i32 %i.eu, %i.et            ; 2 uses
  br i1 %i.ef, label %bb.aw, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.at
  %i.ew = getelementptr i8, ptr %i.dz, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !177
  %i.ey = zext i8 %i.ex to i32                    ; 2 uses
  %i.ez = and i32 %i.ey, 192
  %.not.i61.1 = icmp eq i32 %i.ez, 128
  br i1 %.not.i61.1, label %bb.au, label %._crit_edge.i.i

bb.au:                                            ; preds = %.preheader.i.1
  %i.fa = shl nuw nsw i32 %i.ev, 6                ; 2 uses
  %i.fb = and i32 %i.ey, 63
  %i.fc = or disjoint i32 %i.fb, %i.fa            ; 2 uses
  br i1 %i.ek, label %bb.aw, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.au
  %i.fd = getelementptr i8, ptr %i.dz, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !177
  %.not.i61.2 = icmp slt i8 %i.fe, -64
  br i1 %.not.i61.2, label %bb.av, label %._crit_edge.i.i

bb.av:                                            ; preds = %.preheader.i.2
  %i.ff = shl nuw nsw i32 %i.fc, 6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.lcssa = phi i32 [ %i.et, %bb.at ], [ %i.fa, %bb.au ], [ %i.ff, %bb.av ] ; 4 uses
  %.14974.i.lcssa234 = phi i32 [ %i.eo, %bb.at ], [ %i.ev, %bb.au ], [ %i.fc, %bb.av ]
  %i.fg = icmp samesign ult i32 %.lcssa, 128
  %or.cond.i = select i1 %i.ef, i1 %i.fg, i1 false
  %i.fh = icmp samesign ult i32 %.lcssa, 2048
  %or.cond4.i = select i1 %i.ek, i1 %i.fh, i1 false
  %or.cond62.i = select i1 %or.cond.i, i1 true, i1 %or.cond4.i
  %i.fi = icmp samesign ult i32 %.lcssa, 65536
  %or.cond6.i = select i1 %i.el, i1 %i.fi, i1 false
  %or.cond63.i = select i1 %or.cond62.i, i1 true, i1 %or.cond6.i
  %i.fj = and i32 %.14974.i.lcssa234, 67108832
  %or.cond8.i = icmp eq i32 %i.fj, 864
  %i.fk = icmp samesign ugt i32 %.lcssa, 1114111
  %i.fl = or i1 %or.cond8.i, %i.fk
  %or.cond70.i = select i1 %or.cond63.i, i1 true, i1 %i.fl
  br i1 %or.cond70.i, label %._crit_edge.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ao
  %.153.i = phi i64 [ %i.ed, %bb.ao ], [ %i.em, %bb.aw ] ; 2 uses
  %.not83.i = icmp ult i64 %.153.i, %i.dw
  br i1 %.not83.i, label %bb.an, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

._crit_edge.i.i:                                  ; preds = %bb.ar, %bb.as, %bb.aw, %.preheader.i.preheader, %.preheader.i.1, %.preheader.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.p, ptr %4, align 8, !tbaa !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.p, ptr noundef nonnull align 1 dereferenceable(13) @.str.343, i64 13, i1 false)
  store i64 13, ptr %i.q, align 8, !tbaa !176
  store i8 0, ptr %i.r, align 1, !tbaa !177
  invoke void @_ZN7httplib2ws9WebSocket5closeENS0_11CloseStatusERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(960) %0, i16 noundef zeroext 1007, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i
  %i.fm = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.p
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ay
  %i.fo = load i64, ptr %i.p, align 8, !tbaa !177
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.p
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.az
  %i.ft = load i64, ptr %i.p, align 8, !tbaa !177
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  store atomic i8 1, ptr %i.e seq_cst, align 8
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %.loopexit87, %bb.k, %bb.m, %bb.ba, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43, %bb.h, %bb.e
  %.426 = phi i32 [ 0, %bb.ba ], [ %.022, %bb.h ], [ %.022, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43 ], [ 0, %bb.e ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ 2, %.loopexit87 ], [ 1, %bb.am ], [ 1, %bb.ax ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ba ], [ false, %bb.h ], [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43 ], [ true, %bb.e ], [ true, %bb.k ], [ true, %bb.m ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ true, %.loopexit87 ], [ true, %bb.am ], [ true, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fv = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.f
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fx = load i64, ptr %i.f, align 8, !tbaa !177
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.2, label %bb.bc, label %bb.b

bb.bb:                                            ; preds = %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp, %bb.n, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn38.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.ai, %bb.i ], [ %i.ay, %bb.n ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fz = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.f
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.bb
  %i.gb = load i64, ptr %i.f, align 8, !tbaa !177
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn38.pn

bb.bc:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.527 = phi i32 [ %.426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ 0, %bb.b ]
  ret i32 %.527
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib2ws9WebSocket5closeENS0_11CloseStatusERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(960) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = atomicrmw xchg ptr %i.d, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = lshr i16 %1, 8
  %i.k = trunc nuw i16 %i.j to i8
  store i8 %i.k, ptr %i.h, align 8, !tbaa !177
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.m = trunc i16 %1 to i8
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !189, !noalias !2740 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !176, !noalias !2740 ; 2 uses
  store i8 %i.m, ptr %i.l, align 1, !tbaa !177
  store i64 2, ptr %i.i, align 8, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.n, align 2, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !175, !alias.scope !2740
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.pre, i64 123) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2740
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !190, !noalias !2740
  %i.p = icmp ugt i64 %.pre, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.l   ; 2 uses

.noexc22:                                         ; preds = %.noexc10.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !189, !alias.scope !2740
  %i.r = load i64, ptr %i.a, align 8, !tbaa !190, !noalias !2740
  store i64 %i.r, ptr %i.o, align 8, !tbaa !177, !alias.scope !2740
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc22, %bb.b
  %i.s = phi ptr [ %i.q, %.noexc22 ], [ %i.o, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %.pre44, align 1, !tbaa !177
  store i8 %i.t, ptr %i.s, align 1, !tbaa !177
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.pre44, i64 %spec.select.i.i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !190, !noalias !2740 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !176, !alias.scope !2740
  %i.w = load ptr, ptr %4, align 8, !tbaa !189, !alias.scope !2740
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2740
  %i.y = load i64, ptr %i.v, align 8, !tbaa !176  ; 2 uses
  %i.z = load i64, ptr %i.i, align 8, !tbaa !176
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
          to label %.noexc23 unwind label %bb.m

.noexc23:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.ac = load ptr, ptr %4, align 8, !tbaa !189
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ac, i64 noundef %i.y)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !177
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.aj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aj) #47
          to label %.noexc27 unwind label %bb.n

.noexc27:                                         ; preds = %bb.g
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.al = load ptr, ptr %3, align 8, !tbaa !189
  %i.am = load i64, ptr %i.i, align 8, !tbaa !176
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !809, !range !191, !noundef !192
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = xor i1 %i.ap, true
  %i.ar = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, i8 noundef zeroext 8, ptr noundef %i.al, i64 noundef %i.am, i1 noundef zeroext true, i1 noundef zeroext %i.aq)
          to label %bb.h unwind label %bb.o       ; 0 uses

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.as = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #23 ; 0 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !194
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 noundef 5, i64 noundef 0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !175
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !176
  store i8 0, ptr %i.ax, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.az = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !192, !align !253
  %i.ba = load i8, ptr %i.an, align 8, !tbaa !809, !range !191, !noundef !192
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = invoke noundef zeroext i1 @_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm(ptr noundef nonnull align 8 dereferenceable(12) %i.az, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext %i.bb, i64 noundef 125)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bd = load i8, ptr %i.b, align 1
end_hunk_3
