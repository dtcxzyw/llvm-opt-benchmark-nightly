Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_entropy_decompress?download=true
inline.NumInlined: 167
inline.NumDeleted: 31
begin_hunk_0_@ZS_Huf_decodeImpl:bb.a
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
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_Constant_decode.__zl_static_error_info.20, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef 696, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i32, ptr } %i.k, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.l, ptr %i.m, ptr noundef nonnull @.str.5) #9
  %i.n = ptrtoint ptr %i.m to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.c, 1
  br i1 %i.o, label %.split, label %.loopexit

.split:                                           ; preds = %bb.e
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.f:                                             ; preds = %.split
  %i.q = load i8, ptr %2, align 1, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.q, i64 %1, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %.split
  %.val = load i16, ptr %2, align 1               ; 3 uses
  %.not58 = icmp eq i64 %1, 0
  br i1 %.not58, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check82 = icmp ult i64 %1, 4
  br i1 %min.iters.check82, label %.lr.ph55.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check83 = icmp ult i64 %1, 16
  br i1 %min.iters.check83, label %vec.epilog.ph, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %1, 12
  %n.vec85 = and i64 %1, -16                      ; 4 uses
  %broadcast.splatinsert86 = insertelement <8 x i16> poison, i16 %.val, i64 0
  %broadcast.splat87 = shufflevector <8 x i16> %broadcast.splatinsert86, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.ph84, %vector.body88
  %index89 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body88 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index89 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <8 x i16> %broadcast.splat87, ptr %i.s, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat87, ptr %i.t, align 2, !tbaa !51
  %index.next90 = add nuw i64 %index89, 16        ; 2 uses
  %i.u = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.u, label %middle.block91, label %vector.body88, !llvm.loop !43

middle.block91:                                   ; preds = %vector.body88
  %cmp.n92 = icmp eq i64 %1, %n.vec85
  br i1 %cmp.n92, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block91
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph55.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec85, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %1, -4                       ; 3 uses
  %broadcast.splatinsert94 = insertelement <4 x i16> poison, i16 %.val, i64 0
  %broadcast.splat95 = shufflevector <4 x i16> %broadcast.splatinsert94, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index96
  store <4 x i16> %broadcast.splat95, ptr %i.v, align 2, !tbaa !51
  %index.next97 = add nuw i64 %index96, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %1, %n.vec93
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04454.ph = phi i64 [ 0, %iter.check ], [ %n.vec85, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.04454 = phi i64 [ %i.y, %.lr.ph55 ], [ %.04454.ph, %.lr.ph55.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.04454
  store i16 %.val, ptr %i.x, align 2, !tbaa !51
  %i.y = add nuw i64 %.04454, 1                   ; 2 uses
  %exitcond62.not = icmp eq i64 %i.y, %1
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph55, !llvm.loop !45

bb.h:                                             ; preds = %.split
  %.val47 = load i32, ptr %2, align 1             ; 2 uses
  %.not57 = icmp eq i64 %1, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %bb.h
  %min.iters.check70 = icmp ult i64 %1, 8
  br i1 %min.iters.check70, label %.lr.ph53.preheader100, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph53.preheader
  %n.vec72 = and i64 %1, -8                       ; 3 uses
  %broadcast.splatinsert73 = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %broadcast.splat74 = shufflevector <4 x i32> %broadcast.splatinsert73, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body75 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index76 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %broadcast.splat74, ptr %i.z, align 4, !tbaa !55
  store <4 x i32> %broadcast.splat74, ptr %i.aa, align 4, !tbaa !55
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.ab, label %middle.block78, label %vector.body75, !llvm.loop !46

middle.block78:                                   ; preds = %vector.body75
  %cmp.n79 = icmp eq i64 %1, %n.vec72
  br i1 %cmp.n79, label %.loopexit, label %.lr.ph53.preheader100

.lr.ph53.preheader100:                            ; preds = %.lr.ph53.preheader, %middle.block78
  %.04352.ph = phi i64 [ 0, %.lr.ph53.preheader ], [ %n.vec72, %middle.block78 ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader100, %.lr.ph53
  %.04352 = phi i64 [ %i.ad, %.lr.ph53 ], [ %.04352.ph, %.lr.ph53.preheader100 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04352
  store i32 %.val47, ptr %i.ac, align 4, !tbaa !55
  %i.ad = add nuw i64 %.04352, 1                  ; 2 uses
  %exitcond61.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph53, !llvm.loop !47

bb.i:                                             ; preds = %.split
  %.val48 = load i64, ptr %2, align 1             ; 2 uses
  %.not56 = icmp eq i64 %1, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val48, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ae, align 8, !tbaa !56
  store <2 x i64> %broadcast.splat, ptr %i.af, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader102

.lr.ph.preheader102:                              ; preds = %.lr.ph.preheader, %middle.block
  %.051.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader102, %.lr.ph
  %.051 = phi i64 [ %i.ai, %.lr.ph ], [ %.051.ph, %.lr.ph.preheader102 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.051
  store i64 %.val48, ptr %i.ah, align 8, !tbaa !56
  %i.ai = add nuw i64 %.051, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !49

default.unreachable:                              ; preds = %.split
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph53, %.lr.ph55, %middle.block, %middle.block78, %middle.block91, %vec.epilog.middle.block, %bb.i, %bb.h, %bb.g, %bb.e, %bb.f, %bb.d, %bb.b
  %.sroa.041.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %middle.block78 ], [ 0, %middle.block91 ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph53 ], [ 0, %.lr.ph55 ], [ 0, %.lr.ph ]
  %.sroa.7.0 = phi i64 [ %i.j, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %middle.block78 ], [ 0, %middle.block91 ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph53 ], [ 0, %.lr.ph55 ], [ 0, %.lr.ph ]
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
end_hunk_0
