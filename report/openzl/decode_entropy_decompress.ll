Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_entropy_decompress?download=true
inline.NumInlined: 167
inline.NumDeleted: 31
begin_hunk_0_@ZS_FSE_isError
declare i32 @ZS_FSE_isError(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_Huf_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i32, i64 } @ZS_Huf_decodeImpl(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false)
  ret { i32, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @ZS_Huf_decodeImpl(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 10 uses
  %7 = alloca %struct.ZL_ReadCursor, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #10
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.c = add i64 %4, -3
  %or.cond = icmp ult i64 %i.c, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Huf_decodeImpl.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef 598, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.e, ptr %i.f, ptr noundef nonnull @.str.5) #9
  %i.g = ptrtoint ptr %i.f to i64
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %4, 2
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  br i1 %5, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @ZS_Huf16Avx2_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9
  %.not60 = icmp eq i64 %i.i, %1
  br i1 %.not60, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Huf_decodeImpl.__zl_static_error_info.91, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef 608, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.j, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.5) #9
  %i.m = ptrtoint ptr %i.l to i64
  br label %.thread

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %3
  store ptr %2, ptr %7, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = call { i32, i64 } @ZS_largeHuffmanDecode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %7) #9 ; 2 uses
  %i.q = extractvalue { i32, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.p, 1        ; 2 uses
  %.not57 = icmp eq i32 %i.q, 0
  br i1 %.not57, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.q, ptr %i.s, ptr nonnull @ZS_Huf_decodeImpl.__zl_static_error_info.92, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef 614, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.u = extractvalue { i32, ptr } %i.t, 0
  %i.v = extractvalue { i32, ptr } %i.t, 1
  br label %.thread3

bb.i:                                             ; preds = %bb.g
  %.not58 = icmp eq i64 %i.r, %1
  br i1 %.not58, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %7, align 8, !tbaa !31
  %.val61 = load ptr, ptr %i.o, align 8, !tbaa !29
  %.not59 = icmp eq ptr %.val61, %.val
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.w = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Huf_decodeImpl.__zl_static_error_info.93, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef 616, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.w, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.x, ptr %i.y, ptr noundef nonnull @.str.5) #9
  br label %.thread3

.thread3:                                         ; preds = %bb.h, %bb.k
  %.sroa.050.1.ph = phi i32 [ %i.x, %bb.k ], [ %i.u, %bb.h ]
  %.sroa.19.1.ph.in = phi ptr [ %i.y, %bb.k ], [ %i.v, %bb.h ]
  %.sroa.19.1.ph = ptrtoint ptr %.sroa.19.1.ph.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.thread

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.thread

bb.m:                                             ; preds = %bb.c
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i64 @ZS_HufAvx2_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9
  %.not56 = icmp eq i64 %i.z, %1
  br i1 %.not56, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Huf_decodeImpl.__zl_static_error_info.94, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef 628, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.aa, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ab, ptr %i.ac, ptr noundef nonnull @.str.5) #9
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %.thread

bb.p:                                             ; preds = %bb.m
  %i.ae = tail call i64 @ZS_HUF_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9
  %i.af = tail call i32 @ZS_HUF_isError(i64 noundef %i.ae) #9
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Huf_decodeImpl.__zl_static_error_info.95, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef 633, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.ah = extractvalue { i32, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ag, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ah, ptr %i.ai, ptr noundef nonnull @.str.5) #9
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.e, %bb.p, %bb.o, %bb.l, %.thread3, %bb.f, %bb.q, %bb.b
  %.sroa.050.3 = phi i32 [ %i.e, %bb.b ], [ %i.ah, %bb.q ], [ %i.k, %bb.f ], [ %.sroa.050.1.ph, %.thread3 ], [ 0, %bb.p ], [ %i.ab, %bb.o ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.n ]
  %.sroa.19.3 = phi i64 [ %i.g, %bb.b ], [ %i.aj, %bb.q ], [ %i.m, %bb.f ], [ %.sroa.19.1.ph, %.thread3 ], [ 0, %bb.p ], [ %i.ad, %bb.o ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.050.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.19.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_Raw_decode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #10
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %4)
  %i.d = icmp samesign ult i64 %i.c, 2
  %i.e = add i64 %4, -1
  %i.f = icmp ult i64 %i.e, 8
  %or.cond3.not = and i1 %i.f, %i.d
  br i1 %or.cond3.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Raw_decode.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 661, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.5) #9
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = mul i64 %4, %1
  %.not = icmp eq i64 %i.k, %3
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Raw_decode.__zl_static_error_info.18, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 664, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.m = extractvalue { i32, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.l, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.m, ptr %i.n, ptr noundef nonnull @.str.5) #9
  %i.o = ptrtoint ptr %i.n to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.sroa.019.0 = phi i32 [ %i.h, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.sroa.7.0 = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_Constant_decode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #10
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %i.c, 2
  %i.e = add i64 %4, -1
  %i.f = icmp ult i64 %i.e, 8
  %or.cond3.not = and i1 %i.f, %i.d
  br i1 %or.cond3.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Constant_decode.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef 693, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.5) #9
  %i.j = ptrtoint ptr %i.i to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, %4
  br i1 %.not, label %6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Constant_decode.__zl_static_error_info.20, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef 696, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i32, ptr } %i.k, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.l, ptr %i.m, ptr noundef nonnull @.str.5) #9
  %i.n = ptrtoint ptr %i.m to i64
  br label %.loopexit

6:                                                ; preds = %bb.c
  %7 = icmp eq i64 %i.c, 1
  br i1 %7, label %.split, label %.loopexit

.split:                                           ; preds = %6
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  switch i64 %i.o, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.e:                                             ; preds = %.split
  %i.p = load i8, ptr %2, align 1, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.p, i64 %1, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %.split
  %.val = load i16, ptr %2, align 1               ; 3 uses
  %.not58.a = icmp eq i64 %1, 0
  br i1 %.not58.a, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check82 = icmp ult i64 %1, 4
  br i1 %min.iters.check82, label %.lr.ph55.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check83 = icmp ult i64 %1, 16
  br i1 %min.iters.check83, label %vec.epilog.ph, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %1, 12
  %n.vec85 = and i64 %1, -16                      ; 4 uses
  %broadcast.splatinsert86 = insertelement <8 x i16> poison, i16 %.val, i64 0
  %broadcast.splat87 = shufflevector <8 x i16> %broadcast.splatinsert86, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.ph84, %vector.body88
  %index89 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body88 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index89 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %broadcast.splat87, ptr %i.r, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat87, ptr %i.s, align 2, !tbaa !51
  %index.next90 = add nuw i64 %index89, 16        ; 2 uses
  %i.t = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.t, label %middle.block91, label %vector.body88, !llvm.loop !43

middle.block91:                                   ; preds = %vector.body88
  %cmp.n92 = icmp eq i64 %1, %n.vec85
  br i1 %cmp.n92, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block91
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph55.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec85, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %1, -4                       ; 3 uses
  %broadcast.splatinsert94 = insertelement <4 x i16> poison, i16 %.val, i64 0
  %broadcast.splat95 = shufflevector <4 x i16> %broadcast.splatinsert94, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index96
  store <4 x i16> %broadcast.splat95, ptr %i.u, align 2, !tbaa !51
  %index.next97 = add nuw i64 %index96, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %1, %n.vec93
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04454.ph = phi i64 [ 0, %iter.check ], [ %n.vec85, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.04454 = phi i64 [ %i.x, %.lr.ph55 ], [ %.04454.ph, %.lr.ph55.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.04454
  store i16 %.val, ptr %i.w, align 2, !tbaa !51
  %i.x = add nuw i64 %.04454, 1                   ; 2 uses
  %exitcond62.not.a = icmp eq i64 %i.x, %1
  br i1 %exitcond62.not.a, label %.loopexit, label %.lr.ph55, !llvm.loop !45

bb.g:                                             ; preds = %.split
  %.val47 = load i32, ptr %2, align 1             ; 2 uses
  %.not57.a = icmp eq i64 %1, 0
  br i1 %.not57.a, label %.loopexit, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %bb.g
  %min.iters.check70 = icmp ult i64 %1, 8
  br i1 %min.iters.check70, label %.lr.ph53.preheader100, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph53.preheader
  %n.vec72 = and i64 %1, -8                       ; 3 uses
  %broadcast.splatinsert73 = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %broadcast.splat74 = shufflevector <4 x i32> %broadcast.splatinsert73, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body75 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index76 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %broadcast.splat74, ptr %i.y, align 4, !tbaa !55
  store <4 x i32> %broadcast.splat74, ptr %i.z, align 4, !tbaa !55
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.aa, label %middle.block78, label %vector.body75, !llvm.loop !46

middle.block78:                                   ; preds = %vector.body75
  %cmp.n79 = icmp eq i64 %1, %n.vec72
  br i1 %cmp.n79, label %.loopexit, label %.lr.ph53.preheader100

.lr.ph53.preheader100:                            ; preds = %.lr.ph53.preheader, %middle.block78
  %.04352.ph = phi i64 [ 0, %.lr.ph53.preheader ], [ %n.vec72, %middle.block78 ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader100, %.lr.ph53
  %.04352 = phi i64 [ %i.ac, %.lr.ph53 ], [ %.04352.ph, %.lr.ph53.preheader100 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04352
  store i32 %.val47, ptr %i.ab, align 4, !tbaa !55
  %i.ac = add nuw i64 %.04352, 1                  ; 2 uses
  %exitcond61.not = icmp eq i64 %i.ac, %1
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph53, !llvm.loop !47

bb.h:                                             ; preds = %.split
  %.val48 = load i64, ptr %2, align 1             ; 2 uses
  %.not56 = icmp eq i64 %1, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val48, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !56
  store <2 x i64> %broadcast.splat, ptr %i.ae, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader102

.lr.ph.preheader102:                              ; preds = %.lr.ph.preheader, %middle.block
  %.051.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader102, %.lr.ph
  %.051 = phi i64 [ %i.ah, %.lr.ph ], [ %.051.ph, %.lr.ph.preheader102 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.051
  store i64 %.val48, ptr %i.ag, align 8, !tbaa !56
  %i.ah = add nuw i64 %.051, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !49

default.unreachable:                              ; preds = %.split
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph53, %.lr.ph55, %middle.block, %middle.block78, %middle.block91, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f, %6, %bb.e, %bb.d, %bb.b
  %.sroa.041.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.e ], [ 0, %6 ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %middle.block78 ], [ 0, %middle.block91 ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph53 ], [ 0, %.lr.ph55 ], [ 0, %.lr.ph ]
  %.sroa.7.0 = phi i64 [ %i.j, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.e ], [ 0, %6 ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %middle.block78 ], [ 0, %middle.block91 ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph53 ], [ 0, %.lr.ph55 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_Bit_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #10
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.c = icmp ugt i64 %4, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Bit_decode.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 748, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.e, ptr %i.f, ptr noundef nonnull @.str.5) #9
  %i.g = ptrtoint ptr %i.f to i64
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i64 %4, 3
  %.not = icmp ult i64 %5, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Bit_decode.__zl_static_error_info.22, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 751, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.i, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.j, ptr %i.k, ptr noundef nonnull @.str.5) #9
  %i.l = ptrtoint ptr %i.k to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = mul i64 %5, %1
  %i.n = add i64 %i.m, 7
  %i.o = lshr i64 %i.n, 3
  %.not23 = icmp eq i64 %3, %i.o
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Bit_decode.__zl_static_error_info.23, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 756, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.q = extractvalue { i32, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.p, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.q, ptr %i.r, ptr noundef nonnull @.str.5) #9
  %i.s = ptrtoint ptr %i.r to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = trunc nuw nsw i64 %5 to i32
  %i.u = tail call i64 @ZS_bitpackDecode(ptr noundef %0, i64 noundef %1, i64 noundef %4, ptr noundef %2, i64 noundef %3, i32 noundef %i.t) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.sroa.019.1 = phi i32 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.q, %bb.f ], [ 0, %bb.g ]
  %.sroa.8.1 = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %i.s, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.019.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i64 @ZS_bitpackDecode(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, i64 } @ZL_RC_popVarint(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 14 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 9
  br i1 %i.g, label %bb.b, label %.preheader.i, !prof !19

.preheader.i:                                     ; preds = %bb.a
  %.not88.i = icmp eq ptr %i.c, %i.b
  br i1 %.not88.i, label %.thread80.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.c, align 1, !tbaa !18    ; 2 uses
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  br i1 %i.l, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.h, align 1, !tbaa !18    ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = shl nsw i64 %i.o, 7
  %i.q = and i64 %i.p, 16256
  %i.r = or disjoint i64 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.u = load i8, ptr %i.m, align 1, !tbaa !18    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = shl nsw i64 %i.v, 14
  %i.x = and i64 %i.w, 2080768
  %i.y = or disjoint i64 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.ac = sext i8 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 21
  %i.ae = and i64 %i.ad, 266338304
  %i.af = or disjoint i64 %i.ae, %i.y             ; 2 uses
  %i.ag = icmp sgt i8 %i.ab, -1
  br i1 %i.ag, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !18  ; 2 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 28
  %i.al = and i64 %i.ak, 34091302912
  %i.am = or disjoint i64 %i.al, %i.af            ; 2 uses
  %i.an = icmp sgt i8 %i.ai, -1
  br i1 %i.an, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !18  ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 35
  %i.as = and i64 %i.ar, 4363686772736
  %i.at = or disjoint i64 %i.as, %i.am            ; 2 uses
  %i.au = icmp sgt i8 %i.ap, -1
  br i1 %i.au, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !18  ; 2 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 42
  %i.az = and i64 %i.ay, 558551906910208
  %i.ba = or i64 %i.az, %i.at                     ; 2 uses
  %i.bb = icmp sgt i8 %i.aw, -1
  br i1 %i.bb, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !18  ; 2 uses
  %i.be = sext i8 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 49
  %i.bg = and i64 %i.bf, 71494644084506624
  %i.bh = or i64 %i.bg, %i.ba                     ; 2 uses
  %i.bi = icmp sgt i8 %i.bd, -1
  br i1 %i.bi, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !18  ; 2 uses
  %i.bl = sext i8 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 56
  %i.bn = and i64 %i.bm, 9151314442816847872
  %i.bo = or i64 %i.bn, %i.bh                     ; 2 uses
  %i.bp = icmp sgt i8 %i.bk, -1
  br i1 %i.bp, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.br = load i8, ptr %i.bj, align 1, !tbaa !18  ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl i64 %i.bs, 63
  %i.bu = or i64 %i.bt, %i.bo
  %i.bv = icmp sgt i8 %i.br, -1
  br i1 %i.bv, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_varintDecode.__zl_static_error_info, ptr noundef nonnull %1, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 183, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.bx = extractvalue { i32, ptr } %i.bw, 0      ; 2 uses
  %i.by = extractvalue { i32, ptr } %i.bw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bx, ptr %i.by, ptr noundef nonnull @.str.5) #9
  %i.bz = ptrtoint ptr %i.by to i64
  br label %ZL_varintDecode.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.preheader.i ] ; 3 uses
  %.290.i = phi ptr [ %i.cc, %bb.m ], [ %i.c, %.preheader.i ] ; 2 uses
  %.27089.i = phi i64 [ %i.cg, %bb.m ], [ 0, %.preheader.i ] ; 2 uses
  %i.ca = load i8, ptr %.290.i, align 1, !tbaa !18 ; 3 uses
  %i.cb = icmp slt i8 %i.ca, 0
end_hunk_0
