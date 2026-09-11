Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/picture_csp_enc?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@WebPPictureImportRGB:bb.a

bb.g:                                             ; preds = %bb.g, %.lr.ph90.i
  %.089.i = phi ptr [ %i.q, %.lr.ph90.i ], [ %i.z, %bb.g ] ; 2 uses
  %.06588.i = phi ptr [ %i.d, %.lr.ph90.i ], [ %i.w, %bb.g ] ; 2 uses
  %.06687.i = phi ptr [ %i.c, %.lr.ph90.i ], [ %i.v, %bb.g ] ; 2 uses
  %.06786.i = phi ptr [ %1, %.lr.ph90.i ], [ %i.u, %bb.g ] ; 2 uses
  %.285.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.aa, %bb.g ]
  %i.t = load ptr, ptr @WebPPackRGB, align 8, !tbaa !22
  tail call void %i.t(ptr noundef %.06786.i, ptr noundef %.06687.i, ptr noundef %.06588.i, i32 noundef %i.f, i32 noundef 3, ptr noundef %.089.i) #6, !inline_history !2
  %i.u = getelementptr inbounds i8, ptr %.06786.i, i64 %i.r
  %i.v = getelementptr inbounds i8, ptr %.06687.i, i64 %i.r
  %i.w = getelementptr inbounds i8, ptr %.06588.i, i64 %i.r
  %i.x = load i32, ptr %i.s, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.089.i, i64 %i.y
  %i.aa = add nuw nsw i32 %.285.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.aa, %i.h
  br i1 %exitcond94.not.i, label %Import.exit, label %bb.g, !llvm.loop !3

Import.exit:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureImportRGBA(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %Import.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.j = shl nsw i32 %i.f, 2
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %Import.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !17
  %.not73.i = icmp eq i32 %i.l, 0
  br i1 %.not73.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = tail call fastcc i32 @ImportYUVAFromRGBA(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.m, i32 noundef 4, i32 noundef %2, float noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %0)
  br label %Import.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call i32 @WebPPictureAlloc(ptr noundef nonnull %0) #6
  %.not74.i = icmp eq i32 %i.o, 0
  br i1 %.not74.i, label %Import.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInit() #6
  tail call void @WebPInitAlphaProcessing() #6
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %.lr.ph84.i, label %Import.exit

.lr.ph84.i:                                       ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph84.i
  %.183.i = phi ptr [ %i.r, %.lr.ph84.i ], [ %i.y, %bb.g ] ; 2 uses
  %.16982.i = phi i32 [ 0, %.lr.ph84.i ], [ %i.z, %bb.g ]
  %.17181.i = phi ptr [ %1, %.lr.ph84.i ], [ %i.v, %bb.g ] ; 2 uses
  %i.u = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !22
  tail call void %i.u(ptr noundef %.17181.i, i32 noundef %i.f, ptr noundef %.183.i) #6, !inline_history !2
  %i.v = getelementptr inbounds i8, ptr %.17181.i, i64 %i.s
  %i.w = load i32, ptr %i.t, align 8, !tbaa !21
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.183.i, i64 %i.x
  %i.z = add nuw nsw i32 %.16982.i, 1             ; 2 uses
  %exitcond93.not.i = icmp eq i32 %i.z, %i.h
  br i1 %exitcond93.not.i, label %Import.exit, label %bb.g, !llvm.loop !49

Import.exit:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.aa = phi i32 [ 0, %bb.a ], [ %i.n, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureImportRGBX(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %Import.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.j = mul nsw i32 %i.f, 3
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %Import.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !17
  %.not73.i = icmp eq i32 %i.l, 0
  br i1 %.not73.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc i32 @ImportYUVAFromRGBA(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.d, ptr noundef null, i32 noundef 4, i32 noundef %2, float noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %0)
  br label %Import.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @WebPPictureAlloc(ptr noundef nonnull %0) #6
  %.not74.i = icmp eq i32 %i.n, 0
  br i1 %.not74.i, label %Import.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInit() #6
  tail call void @WebPInitAlphaProcessing() #6
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %.lr.ph90.i, label %Import.exit

.lr.ph90.i:                                       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = sext i32 %2 to i64                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph90.i
  %.089.i = phi ptr [ %i.q, %.lr.ph90.i ], [ %i.z, %bb.g ] ; 2 uses
  %.06588.i = phi ptr [ %i.d, %.lr.ph90.i ], [ %i.w, %bb.g ] ; 2 uses
  %.06687.i = phi ptr [ %i.c, %.lr.ph90.i ], [ %i.v, %bb.g ] ; 2 uses
  %.06786.i = phi ptr [ %1, %.lr.ph90.i ], [ %i.u, %bb.g ] ; 2 uses
  %.285.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.aa, %bb.g ]
  %i.t = load ptr, ptr @WebPPackRGB, align 8, !tbaa !22
  tail call void %i.t(ptr noundef %.06786.i, ptr noundef %.06687.i, ptr noundef %.06588.i, i32 noundef %i.f, i32 noundef 4, ptr noundef %.089.i) #6, !inline_history !2
  %i.u = getelementptr inbounds i8, ptr %.06786.i, i64 %i.r
  %i.v = getelementptr inbounds i8, ptr %.06687.i, i64 %i.r
  %i.w = getelementptr inbounds i8, ptr %.06588.i, i64 %i.r
  %i.x = load i32, ptr %i.s, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.089.i, i64 %i.y
  %i.aa = add nuw nsw i32 %.285.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.aa, %i.h
  br i1 %exitcond94.not.i, label %Import.exit, label %bb.g, !llvm.loop !3

Import.exit:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %i.ab
}

declare void @WebPInitAlphaProcessing() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ImportYUVAFromRGBA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef range(i32 3, 5) %4, i32 noundef %5, float noundef %6, i32 noundef range(i32 0, 2) %7, ptr noundef nonnull %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.VP8Random, align 4          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 10 uses
  %i.e = icmp eq ptr %3, null
  %.0196.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 228
  %.0196.sroa.gep272 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.0196.sroa.gep274 = getelementptr inbounds nuw i8, ptr %9, i64 4
  br i1 %i.e, label %CheckNonOpaque.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @WebPInitAlphaProcessing() #6
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.i, label %CheckNonOpaque.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = sext i32 %5 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.in.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %.120.i = phi ptr [ %3, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr @WebPHasAlpha32b, align 8, !tbaa !22
  %i.i = tail call i32 %i.h(ptr noundef %.120.i, i32 noundef %i.b) #6, !inline_history !0
  %.not.i = icmp eq i32 %i.i, 0                   ; 3 uses
  br i1 %.not.i, label %bb.d, label %CheckNonOpaque.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %.in.i, -1
  %i.k = getelementptr inbounds i8, ptr %.120.i, i64 %i.g
  %i.l = icmp sgt i32 %.in.i, 1
  br i1 %i.l, label %bb.c, label %CheckNonOpaque.exit, !llvm.loop !1

CheckNonOpaque.exit:                              ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0.i341 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.not339 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ %.not.i, %bb.c ], [ %.not.i, %bb.d ] ; 6 uses
  %i.m = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 4, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !26
  store i32 0, ptr %8, align 8, !tbaa !17
  %i.o = tail call i32 @WebPPictureAllocYUVA(ptr noundef nonnull %8) #6
  %.not216 = icmp eq i32 %i.o, 0
  br i1 %.not216, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %CheckNonOpaque.exit
  %i.p = icmp slt i32 %i.b, 4
  %i.q = icmp slt i32 %i.d, 4
  %or.cond = or i1 %i.p, %i.q
  %.not217307 = icmp eq i32 %7, 0
  %.not217 = or i1 %.not217307, %or.cond
  br i1 %.not217, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !22
  tail call void @SharpYuvInit(ptr noundef %i.r) #6
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !19
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !20
  %i.ae = tail call ptr @SharpYuvGetConversionMatrix(i32 noundef 0) #6
  %i.af = tail call i32 @SharpYuvConvert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef range(i32 3, 5) %4, i32 noundef %5, i32 noundef 8, ptr noundef %i.t, i32 noundef %i.v, ptr noundef %i.x, i32 noundef %i.z, ptr noundef %i.ab, i32 noundef %i.z, i32 noundef 8, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef %i.ae) #6
  %.not.i227 = icmp eq i32 %i.af, 0
  br i1 %.not.i227, label %PreprocessARGB.exit, label %PreprocessARGB.exit.thread

PreprocessARGB.exit:                              ; preds = %bb.f
  %i.ag = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %8, i32 noundef 1) #6
  %.not225 = icmp eq i32 %i.ag, 0                 ; 2 uses
  %brmerge = or i1 %.not339, %.not225
  %not..not225 = xor i1 %.not225, true
  %.mux = zext i1 %not..not225 to i32
  br i1 %brmerge, label %bb.aa, label %bb.g

PreprocessARGB.exit.thread:                       ; preds = %bb.f
  br i1 %.not339, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %PreprocessARGB.exit, %PreprocessARGB.exit.thread
  %i.ah = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !25
  %i.am = tail call i32 %i.ah(ptr noundef %3, i32 noundef %5, i32 noundef %i.b, i32 noundef %i.d, ptr noundef %i.aj, i32 noundef %i.al) #6 ; 0 uses
  br label %bb.aa

bb.h:                                             ; preds = %bb.e
  %i.an = add nsw i32 %i.b, 1
  %i.ao = ashr i32 %i.an, 1                       ; 5 uses
  %i.ap = shl nsw i32 %i.ao, 2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call ptr @WebPSafeMalloc(i64 noundef %i.aq, i64 noundef 2) #6 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.ba = fcmp ogt float %6, 0.000000e+00
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @VP8InitRandom(ptr noundef nonnull %9, float noundef %6) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0196.sroa.phi = phi ptr [ %.0196.sroa.gep, %bb.i ], [ inttoptr (i64 228 to ptr), %bb.h ] ; 7 uses
  %.0196.sroa.phi271 = phi ptr [ %.0196.sroa.gep272, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 14 uses
  %.0196.sroa.phi273 = phi ptr [ %.0196.sroa.gep274, %bb.i ], [ inttoptr (i64 4 to ptr), %bb.h ] ; 21 uses
  %.0196 = phi ptr [ %9, %bb.i ], [ null, %bb.h ] ; 22 uses
  call void @WebPInitConvertARGBToYUV() #6
  call void @WebPInitGammaTables() #6
  %.not224 = icmp eq ptr %i.ar, null
  br i1 %.not224, label %.thread305, label %bb.k

.thread305:                                       ; preds = %bb.j
  %i.bb = call i32 @WebPEncodingSetError(ptr noundef nonnull %8, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp eq ptr %.0196, null
  br i1 %i.bc, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.bd = ashr i32 %i.d, 1                        ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bf = icmp sgt i32 %i.b, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bh = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %i.bi = sext i32 %5 to i64                      ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bk = icmp sgt i32 %i.ao, 0
  %wide.trip.count.i241 = zext nneg i32 %i.ao to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.bm = shl nsw i32 %5, 1
  %i.bn = sext i32 %i.bm to i64                   ; 4 uses
  %spec.select226.idx = select i1 %.not339, i64 0, i64 %i.bn
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr @WebPImportYUVAFromRGBA, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !25
  call void %i.bo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %.0.i341, i32 noundef %i.b, i32 noundef %i.d, ptr noundef nonnull %i.ar, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef %i.bu, ptr noundef %i.at, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az) #6
  %i.bv = and i32 %i.d, 1
  %.not223 = icmp eq i32 %i.bv, 0
  br i1 %.not223, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = add nsw i32 %i.d, -1
  %i.bx = sext i32 %i.bw to i64                   ; 3 uses
  %i.by = load i32, ptr %i.bp, align 8, !tbaa !30
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, %i.bx
  %i.cb = getelementptr inbounds i8, ptr %i.at, i64 %i.ca
  %i.cc = ashr i32 %i.d, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load i32, ptr %i.br, align 4, !tbaa !31
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.cf, %i.cd                ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.av, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ax, i64 %i.cg
  %i.cj = sext i32 %5 to i64
  %i.ck = mul nsw i64 %i.bx, %i.cj                ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %2, i64 %i.ck
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.ck
  br i1 %.not339, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = load i32, ptr %i.bt, align 8, !tbaa !25
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, %i.bx
  %i.cr = getelementptr inbounds i8, ptr %i.az, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.ck
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0209 = phi ptr [ %i.cs, %bb.n ], [ %3, %bb.m ]
  %.0197 = phi ptr [ %i.cr, %bb.n ], [ %i.az, %bb.m ]
  %i.ct = load ptr, ptr @WebPImportYUVAFromRGBALastLine, align 8, !tbaa !22
  call void %i.ct(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cm, ptr noundef %.0209, i32 noundef %4, i32 noundef %.0.i341, i32 noundef %i.b, ptr noundef nonnull %i.ar, ptr noundef %i.cb, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %.0197) #6
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph, %ConvertRowsToUV.exit
  %.1316 = phi ptr [ %i.az, %.lr.ph ], [ %.2303, %ConvertRowsToUV.exit ] ; 3 uses
  %.0198315 = phi ptr [ %i.ax, %.lr.ph ], [ %i.jk, %ConvertRowsToUV.exit ] ; 2 uses
  %.0199314 = phi ptr [ %i.av, %.lr.ph ], [ %i.jj, %ConvertRowsToUV.exit ] ; 2 uses
  %.0200313 = phi ptr [ %i.at, %.lr.ph ], [ %i.gf, %ConvertRowsToUV.exit ] ; 3 uses
  %.0202312 = phi i32 [ 0, %.lr.ph ], [ %i.jo, %ConvertRowsToUV.exit ]
  %.0206311 = phi ptr [ %0, %.lr.ph ], [ %i.jl, %ConvertRowsToUV.exit ] ; 5 uses
  %.0207310 = phi ptr [ %1, %.lr.ph ], [ %i.jn, %ConvertRowsToUV.exit ] ; 5 uses
  %.0208309 = phi ptr [ %2, %.lr.ph ], [ %i.jm, %ConvertRowsToUV.exit ] ; 5 uses
  %.1210308 = phi ptr [ %3, %.lr.ph ], [ %spec.select226, %ConvertRowsToUV.exit ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.i229, label %ConvertRowToY.exit239

.lr.ph.i229:                                      ; preds = %bb.p, %.lr.ph.i229
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %.lr.ph.i229 ], [ 0, %bb.p ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i229 ], [ 0, %bb.p ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0206311, i64 %indvars.iv.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !33
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.0207310, i64 %indvars.iv.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !33
  %i.cz = zext i8 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0208309, i64 %indvars.iv.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !33
  %i.dc = zext i8 %i.db to i32
  %i.dd = load i32, ptr %.0196.sroa.phi, align 4, !tbaa !54
  %i.de = load i32, ptr %.0196, align 4, !tbaa !55
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0196.sroa.phi271, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = load i32, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.0196.sroa.phi271, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32
  %i.dm = sub i32 %i.dh, %i.dl
  %i.dn = and i32 %i.dm, 2147483647               ; 2 uses
  store i32 %i.dn, ptr %i.dg, align 4, !tbaa !32
  %i.do = load i32, ptr %.0196, align 4, !tbaa !55
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 55
  %storemerge.i.i.i = select i1 %i.dq, i32 0, i32 %i.dp
  store i32 %storemerge.i.i.i, ptr %.0196, align 4, !tbaa !55
  %i.dr = load i32, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.ds = add nsw i32 %i.dr, 1                    ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 55
  %storemerge20.i.i.i = select i1 %i.dt, i32 0, i32 %i.ds
  store i32 %storemerge20.i.i.i, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.du = shl nuw i32 %i.dn, 1
  %i.dv = ashr i32 %i.du, 16
  %i.dw = mul nsw i32 %i.dv, %i.dd
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = mul nuw nsw i32 %i.cw, 16839
  %i.dz = mul nuw nsw i32 %i.cz, 33059
  %i.ea = mul nuw nsw i32 %i.dc, 6420
  %i.eb = add nuw nsw i32 %i.dy, 1081344
  %i.ec = add nuw nsw i32 %i.eb, %i.dz
  %i.ed = add nuw nsw i32 %i.ec, %i.ea
  %i.ee = add nuw nsw i32 %i.ed, %i.dx
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0200313, i64 %indvars.iv16.i
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !33
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.bh
  %exitcond.not.i = icmp eq i64 %indvars.iv.next17.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i230, label %.lr.ph.i229, !llvm.loop !50

.lr.ph.i230:                                      ; preds = %.lr.ph.i229
  %i.ei = getelementptr inbounds i8, ptr %.0206311, i64 %i.bi
  %i.ej = getelementptr inbounds i8, ptr %.0207310, i64 %i.bi
  %i.ek = getelementptr inbounds i8, ptr %.0208309, i64 %i.bi
  %i.el = load i32, ptr %i.bg, align 8, !tbaa !30
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %.0200313, i64 %i.em
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i230
  %indvars.iv16.i232 = phi i64 [ 0, %.lr.ph.i230 ], [ %indvars.iv.next17.i236, %bb.q ] ; 2 uses
  %indvars.iv.i233 = phi i64 [ 0, %.lr.ph.i230 ], [ %indvars.iv.next.i237, %bb.q ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.i233
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !33
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.i233
  %i.es = load i8, ptr %i.er, align 1, !tbaa !33
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv.i233
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !33
  %i.ew = zext i8 %i.ev to i32
  %i.ex = load i32, ptr %.0196.sroa.phi, align 4, !tbaa !54
  %i.ey = load i32, ptr %.0196, align 4, !tbaa !55
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0196.sroa.phi271, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !32
  %i.fc = load i32, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %.0196.sroa.phi271, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !32
  %i.fg = sub i32 %i.fb, %i.ff
  %i.fh = and i32 %i.fg, 2147483647               ; 2 uses
  store i32 %i.fh, ptr %i.fa, align 4, !tbaa !32
  %i.fi = load i32, ptr %.0196, align 4, !tbaa !55
  %i.fj = add nsw i32 %i.fi, 1                    ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 55
  %storemerge.i.i.i234 = select i1 %i.fk, i32 0, i32 %i.fj
  store i32 %storemerge.i.i.i234, ptr %.0196, align 4, !tbaa !55
  %i.fl = load i32, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 55
  %storemerge20.i.i.i235 = select i1 %i.fn, i32 0, i32 %i.fm
  store i32 %storemerge20.i.i.i235, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.fo = shl nuw i32 %i.fh, 1
  %i.fp = ashr i32 %i.fo, 16
  %i.fq = mul nsw i32 %i.fp, %i.ex
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = mul nuw nsw i32 %i.eq, 16839
  %i.ft = mul nuw nsw i32 %i.et, 33059
  %i.fu = mul nuw nsw i32 %i.ew, 6420
  %i.fv = add nuw nsw i32 %i.fs, 1081344
  %i.fw = add nuw nsw i32 %i.fv, %i.ft
  %i.fx = add nuw nsw i32 %i.fw, %i.fu
  %i.fy = add nuw nsw i32 %i.fx, %i.fr
  %i.fz = lshr i32 %i.fy, 16
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv16.i232
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !33
  %indvars.iv.next17.i236 = add nuw nsw i64 %indvars.iv16.i232, 1 ; 2 uses
  %indvars.iv.next.i237 = add nuw nsw i64 %indvars.iv.i233, %i.bh
  %exitcond.not.i238 = icmp eq i64 %indvars.iv.next17.i236, %wide.trip.count.i
  br i1 %exitcond.not.i238, label %ConvertRowToY.exit239, label %bb.q, !llvm.loop !50

ConvertRowToY.exit239:                            ; preds = %bb.q, %bb.p
  %i.gc = load i32, ptr %i.bg, align 8, !tbaa !30
  %i.gd = shl nsw i32 %i.gc, 1
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %.0200313, i64 %i.ge ; 2 uses
  br i1 %.not339, label %.thread, label %bb.r

bb.r:                                             ; preds = %ConvertRowToY.exit239
  %i.gg = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !22
  %i.gh = load i32, ptr %i.bj, align 8, !tbaa !25
  %i.gi = call i32 %i.gg(ptr noundef %.1210308, i32 noundef %5, i32 noundef %i.b, i32 noundef 2, ptr noundef %.1316, i32 noundef %i.gh) #6
  %.not221.not = icmp eq i32 %i.gi, 0
  %i.gj = load i32, ptr %i.bj, align 8, !tbaa !25
  %i.gk = shl nsw i32 %i.gj, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %.1316, i64 %i.gl ; 2 uses
  br i1 %.not221.not, label %bb.s, label %.thread

.thread:                                          ; preds = %ConvertRowToY.exit239, %bb.r
  %.2304 = phi ptr [ %i.gm, %bb.r ], [ %.1316, %ConvertRowToY.exit239 ]
  call void @WebPAccumulateRGB(ptr noundef nonnull %.0206311, ptr noundef nonnull %.0207310, ptr noundef nonnull %.0208309, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.ar, i32 noundef %i.b) #6
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @WebPAccumulateRGBA(ptr noundef nonnull %.0206311, ptr noundef nonnull %.0207310, ptr noundef nonnull %.0208309, ptr noundef %.1210308, i32 noundef %5, ptr noundef nonnull %i.ar, i32 noundef %i.b) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %.2303 = phi ptr [ %i.gm, %bb.s ], [ %.2304, %.thread ] ; 2 uses
  br i1 %i.bk, label %.lr.ph.i240, label %ConvertRowsToUV.exit

.lr.ph.i240:                                      ; preds = %bb.t, %.lr.ph.i240
  %indvars.iv.i242 = phi i64 [ %indvars.iv.next.i245, %.lr.ph.i240 ], [ 0, %bb.t ] ; 3 uses
  %.023.i = phi ptr [ %i.jg, %.lr.ph.i240 ], [ %i.ar, %bb.t ] ; 4 uses
  %i.gn = load i16, ptr %.023.i, align 2, !tbaa !58
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !58
  %i.gr = zext i16 %i.gq to i32                   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !58
  %i.gu = zext i16 %i.gt to i32                   ; 2 uses
  %i.gv = load i32, ptr %.0196.sroa.phi, align 4, !tbaa !54
  %i.gw = load i32, ptr %.0196, align 4, !tbaa !55
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.0196.sroa.phi271, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !32
  %i.ha = load i32, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %.0196.sroa.phi271, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !32
  %i.he = sub i32 %i.gz, %i.hd
  %i.hf = and i32 %i.he, 2147483647               ; 2 uses
  store i32 %i.hf, ptr %i.gy, align 4, !tbaa !32
  %i.hg = load i32, ptr %.0196, align 4, !tbaa !55
  %i.hh = add nsw i32 %i.hg, 1                    ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 55
  %storemerge.i.i.i243 = select i1 %i.hi, i32 0, i32 %i.hh
  store i32 %storemerge.i.i.i243, ptr %.0196, align 4, !tbaa !55
  %i.hj = load i32, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.hk = add nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 55
  %storemerge20.i.i.i244 = select i1 %i.hl, i32 0, i32 %i.hk
  store i32 %storemerge20.i.i.i244, ptr %.0196.sroa.phi273, align 4, !tbaa !56
  %i.hm = shl nuw i32 %i.hf, 1
  %i.hn = ashr i32 %i.hm, 14
  %i.ho = mul nsw i32 %i.hn, %i.gv
  %i.hp = ashr i32 %i.ho, 8
  %i.hq = mul nsw i32 %i.go, -9719
end_hunk_0
